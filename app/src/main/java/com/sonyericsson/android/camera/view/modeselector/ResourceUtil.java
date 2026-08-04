package com.sonyericsson.android.camera.view.modeselector;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.android.camera.util.capability.SharedPrefsTranslator;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;

public class ResourceUtil {
    public static final String HTTPS_SCHEME = "https";
    public static final String HTTP_SCHEME = "http";
    private static final int ICON_SIZE_LIMIT_COEFFICIENT = 2;
    private static final int IO_BUFFER_SIZE = 4096;
    private static final int NETWORK_TIMEOUT = 60000;
    public static final String RESOURCE_SCHEME = "resource";
    public static final String RES_TYPE_NAME_DRAWABLE = "drawable";
    public static final String RES_TYPE_NAME_STRING = "string";
    private static final String TAG = "ResourceUtil";

    public static boolean isDrawableResource(Resources resources, int i) {
        return isCorrectResourceType(resources, i, RES_TYPE_NAME_DRAWABLE);
    }

    public static boolean isStringResource(Resources resources, int i) {
        return isCorrectResourceType(resources, i, RES_TYPE_NAME_STRING);
    }

    private static boolean isCorrectResourceType(Resources resources, int i, String str)
            throws Resources.NotFoundException {
        String resourceTypeName;
        try {
            resourceTypeName = resources.getResourceTypeName(i);
        } catch (Resources.NotFoundException e) {
            CamLog.w("Resource type is not appropriate. Message : " + e.getMessage());
            resourceTypeName = null;
        }
        if (CamLog.VERBOSE) {
            CamLog.d("checkResourceType() : expected=" + str + ", actual=" + resourceTypeName);
        }
        return str.equals(resourceTypeName);
    }

    public static String getString(Context context, String str, int i) {
        try {
            return context.getPackageManager().getResourcesForApplication(str).getString(i);
        } catch (PackageManager.NameNotFoundException e) {
            CamLog.e("Could not get string. Message : " + e.getMessage());
            throw new RuntimeException(e);
        }
    }

    public static String getString(Context context, String str, int i, String str2, int i2) {
        String string = str2;
        Throwable error = null;
        try {
            string = getString(context, str, i);
            if (i2 < string.length()) {
                CamLog.w("Loaded string is over limit length.");
                string = string.substring(0, i2);
            }
        } catch (OutOfMemoryError e) {
            error = e;
        } catch (RuntimeException e) {
            error = e;
        }
        if (error != null) {
            CamLog.e("Could not get string. Message : " + error.getMessage());
        }
        return string;
    }

    public static String getResourceUri(Context context, String str, int i) {
        return "resource://" + str + SharedPrefsTranslator.CONNECTOR_SLASH + i;
    }

    public static Bitmap getBitmap(Context context, String str, int i, int i2) {
        if (str == null) {
            return null;
        }
        Uri uri = Uri.parse(str);
        if (RESOURCE_SCHEME.equals(uri.getScheme())) {
            try {
                return getBitmap(context, uri.getHost(), Integer.parseInt(uri.getLastPathSegment()), i, i2);
            } catch (Exception e) {
                CamLog.e("Could not get drawable. Message : " + e.getMessage());
                return null;
            }
        }
        if (HTTPS_SCHEME.equals(uri.getScheme())) {
            try {
                return getRemoteBitmap(str, i, i2);
            } catch (Throwable th) {
                CamLog.e("Could not get remote drawable. Message : " + th.getMessage());
                return null;
            }
        }
        if (HTTP_SCHEME.equals(uri.getScheme())) {
            try {
                return getRemoteBitmap(str, i, i2);
            } catch (Throwable th2) {
                CamLog.e("Could not get remote drawable. Message : " + th2.getMessage());
                return null;
            }
        }
        return null;
    }

    public static Bitmap getBitmap(Context context, String str, int i, int i2, int i3) {
        try {
            Resources resourcesForApplication = context.getPackageManager().getResourcesForApplication(str);
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            int i4 = i2 * 2;
            int i5 = i3 * 2;
            BitmapFactory.decodeResource(resourcesForApplication, i, options);
            if (i4 >= options.outWidth && i5 >= options.outHeight) {
                Bitmap bitmapDecodeResource = BitmapFactory.decodeResource(resourcesForApplication, i);
                if (bitmapDecodeResource != null) {
                    bitmapDecodeResource = Bitmap.createScaledBitmap(bitmapDecodeResource, i2, i3, true);
                }
                return bitmapDecodeResource;
            }
            CamLog.e("Stop loading drawable. The drawable size is too large. Limit size is [w=" + i4 + ", h=" + i5
                    + "]. Drawable size is [w=" + options.outWidth + ", h=" + options.outHeight + "]");
            return null;
        } catch (PackageManager.NameNotFoundException | Resources.NotFoundException | OutOfMemoryError e) {
            CamLog.e("Could not get drawable. Message : " + e.getMessage());
            return null;
        }
    }
private static Bitmap getRemoteBitmap(String url, int width, int height) {
        HttpURLConnection connection = null;
        InputStream input = null;
        OutputStream output = null;
        ByteArrayOutputStream byteStream = null;
        Bitmap bitmap = null;

        try {
            URL remoteUrl = new URL(url);
            connection = (HttpURLConnection) remoteUrl.openConnection();
            connection.setConnectTimeout(NETWORK_TIMEOUT);
            connection.setReadTimeout(NETWORK_TIMEOUT);

            input = new BufferedInputStream(connection.getInputStream());
            byteStream = new ByteArrayOutputStream();
            output = new BufferedOutputStream(byteStream, IO_BUFFER_SIZE);

            copy(input, output);
            output.flush();

            byte[] data = byteStream.toByteArray();
            bitmap = BitmapFactory.decodeByteArray(data, 0, data.length);

        } catch (MalformedURLException e) {
            CamLog.e("Malformed URL. " + e.getMessage());
            return null;
        } catch (IOException e) {
            CamLog.e("Could not open connection. " + e.getMessage());
            return null;
        } finally {
            if (input != null) {
                try {
                    input.close();
                } catch (IOException e) {
                    // Ignore
                }
            }
            if (output != null) {
                try {
                    output.close();
                } catch (IOException e) {
                    // Ignore
                }
            }
            if (connection != null) {
                connection.disconnect();
            }
        }

        if (bitmap == null) {
            CamLog.e("Bitmap is null.");
            return null;
        }

        Bitmap scaled = Bitmap.createScaledBitmap(bitmap, width, height, true);
        if (bitmap != scaled) {
            bitmap.recycle();
        }
        return scaled;
    }

    private static void copy(InputStream inputStream, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[4096];
        while (true) {
            int i = inputStream.read(bArr);
            if (i == -1) {
                return;
            } else {
                outputStream.write(bArr, 0, i);
            }
        }
    }
}

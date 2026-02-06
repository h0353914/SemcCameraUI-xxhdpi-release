package com.sonyericsson.android.camera.view.modeselector;

import android.content.Context;
import android.content.pm.PackageManager$NameNotFoundException;
import android.content.res.Resources;
import android.content.res.Resources$NotFoundException;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory$Options;
import android.net.Uri;
import com.sonyericsson.android.camera.util.CamLog;
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
        return isCorrectResourceType(resources, i, "drawable");
    }

    public static boolean isStringResource(Resources resources, int i) {
        return isCorrectResourceType(resources, i, "string");
    }

    private static boolean isCorrectResourceType(Resources resources, int i, String str) {
        String resourceTypeName;
        try {
            resourceTypeName = resources.getResourceTypeName(i);
        } catch (Resources$NotFoundException e) {
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
        } catch (PackageManager$NameNotFoundException e) {
            CamLog.e("Could not get string. Message : " + e.getMessage());
            throw new RuntimeException(e);
        }
    }

    public static String getString(Context context, String str, int i, String str2, int i2) {
        String string;
        try {
            string = getString(context, str, i);
            try {
                if (i2 < string.length()) {
                    CamLog.w("Loaded string is over limit length.");
                    string = string.substring(0, i2);
                }
                e = null;
            } catch (Resources$NotFoundException e) {
                e = e;
            } catch (OutOfMemoryError e2) {
                e = e2;
            } catch (RuntimeException e3) {
                e = e3;
            }
        } catch (Resources$NotFoundException e4) {
            e = e4;
            string = str2;
        } catch (OutOfMemoryError e5) {
            e = e5;
            string = str2;
        } catch (RuntimeException e6) {
            e = e6;
            string = str2;
        }
        if (e != null) {
            CamLog.e("Could not get string. Message : " + e.getMessage());
        }
        return string;
    }

    public static String getResourceUri(Context context, String str, int i) {
        return "resource://" + str + "/" + i;
    }

    public static Bitmap getBitmap(Context context, String str, int i, int i2) {
        if (str == null) {
            return null;
        }
        Uri uri = Uri.parse(str);
        if ("resource".equals(uri.getScheme())) {
            return getBitmap(context, uri.getHost(), Integer.parseInt(uri.getLastPathSegment()), i, i2);
        }
        if ("https".equals(uri.getScheme())) {
            return getRemoteBitmap(str, i, i2);
        }
        if ("http".equals(uri.getScheme())) {
            return getRemoteBitmap(str, i, i2);
        }
        return null;
    }

    public static Bitmap getBitmap(Context context, String str, int i, int i2, int i3) {
        Bitmap bitmapDecodeResource;
        Resources resourcesForApplication;
        BitmapFactory$Options bitmapFactory$Options;
        int i4;
        int i5;
        Throwable th = null;
        try {
            resourcesForApplication = context.getPackageManager().getResourcesForApplication(str);
            bitmapFactory$Options = new BitmapFactory$Options();
            bitmapFactory$Options.inJustDecodeBounds = true;
            i4 = i2 * 2;
            i5 = i3 * 2;
            BitmapFactory.decodeResource(resourcesForApplication, i, bitmapFactory$Options);
        } catch (PackageManager$NameNotFoundException e) {
            th = e;
            bitmapDecodeResource = null;
        } catch (Resources$NotFoundException e2) {
            th = e2;
            bitmapDecodeResource = null;
        } catch (OutOfMemoryError e3) {
            th = e3;
            bitmapDecodeResource = null;
        }
        if (i4 >= bitmapFactory$Options.outWidth && i5 >= bitmapFactory$Options.outHeight) {
            bitmapDecodeResource = BitmapFactory.decodeResource(resourcesForApplication, i);
            if (bitmapDecodeResource != null) {
                try {
                    bitmapDecodeResource = Bitmap.createScaledBitmap(bitmapDecodeResource, i2, i3, true);
                } catch (PackageManager$NameNotFoundException e4) {
                    th = e4;
                } catch (Resources$NotFoundException e5) {
                    th = e5;
                } catch (OutOfMemoryError e6) {
                    th = e6;
                }
            }
            if (th != null) {
                CamLog.e("Could not get drawable. Message : " + th.getMessage());
            }
            return bitmapDecodeResource;
        }
        CamLog.e("Stop loading drawable. The drawable size is too large. Limit size is [w=" + i4 + ", h=" + i5 + "]. Drawable size is [w=" + bitmapFactory$Options.outWidth + ", h=" + bitmapFactory$Options.outHeight + "]");
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00c5  */
    /* JADX WARN: Type inference failed for: r7v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v4, types: [java.net.HttpURLConnection] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static Bitmap getRemoteBitmap(String str, int i, int i2) throws Throwable {
        HttpURLConnection httpURLConnection;
        BufferedInputStream bufferedInputStream;
        BufferedOutputStream bufferedOutputStream;
        Bitmap bitmapCreateScaledBitmap = null;
        try {
            try {
                httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
                try {
                    httpURLConnection.setConnectTimeout(60000);
                    httpURLConnection.setReadTimeout(60000);
                    try {
                        bufferedInputStream = new BufferedInputStream(httpURLConnection.getInputStream());
                        try {
                            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                            bufferedOutputStream = new BufferedOutputStream(byteArrayOutputStream, 4096);
                            try {
                                copy(bufferedInputStream, bufferedOutputStream);
                                bufferedOutputStream.flush();
                                byte[] byteArray = byteArrayOutputStream.toByteArray();
                                Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(byteArray, 0, byteArray.length);
                                if (bufferedInputStream != null) {
                                    bufferedInputStream.close();
                                }
                                if (bufferedOutputStream != null) {
                                    bufferedOutputStream.close();
                                }
                                if (httpURLConnection != null) {
                                    httpURLConnection.disconnect();
                                }
                                if (bitmapDecodeByteArray != null) {
                                    bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmapDecodeByteArray, i, i2, true);
                                    if (bitmapDecodeByteArray != bitmapCreateScaledBitmap) {
                                        bitmapDecodeByteArray.recycle();
                                    }
                                } else {
                                    CamLog.e("Bitmap is null.");
                                }
                                return bitmapCreateScaledBitmap;
                            } catch (Throwable th) {
                                th = th;
                                if (bufferedInputStream != null) {
                                    bufferedInputStream.close();
                                }
                                if (bufferedOutputStream != null) {
                                    bufferedOutputStream.close();
                                }
                                throw th;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            bufferedOutputStream = null;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        bufferedInputStream = null;
                        bufferedOutputStream = null;
                    }
                } catch (MalformedURLException e) {
                    e = e;
                    CamLog.e("Malformed URL. " + e.getMessage());
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                    return null;
                } catch (IOException e2) {
                    e = e2;
                    CamLog.e("Could not open connection. " + e.getMessage());
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                    return null;
                }
            } catch (Throwable th4) {
                th = th4;
                if (str != 0) {
                    str.disconnect();
                }
                throw th;
            }
        } catch (MalformedURLException e3) {
            e = e3;
            httpURLConnection = null;
        } catch (IOException e4) {
            e = e4;
            httpURLConnection = null;
        } catch (Throwable th5) {
            th = th5;
            str = 0;
            if (str != 0) {
            }
            throw th;
        }
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

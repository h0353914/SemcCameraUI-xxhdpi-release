package android.support.v4.provider;

import android.content.ContentUris;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager$NameNotFoundException;
import android.content.pm.ProviderInfo;
import android.content.pm.Signature;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Typeface;
import android.net.Uri;
import android.net.Uri$Builder;
import android.os.Build$VERSION;
import android.os.CancellationSignal;
import android.os.Handler;
import android.support.annotation.GuardedBy;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo$Scope;
import android.support.annotation.VisibleForTesting;
import android.support.v4.content.res.FontResourcesParserCompat;
import android.support.v4.content.res.ResourcesCompat$FontCallback;
import android.support.v4.graphics.TypefaceCompat;
import android.support.v4.graphics.TypefaceCompatUtil;
import android.support.v4.util.LruCache;
import android.support.v4.util.SimpleArrayMap;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class FontsContractCompat {
    private static final int BACKGROUND_THREAD_KEEP_ALIVE_DURATION_MS = 10000;

    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public static final String PARCEL_FONT_RESULTS = "font_results";

    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    static final int RESULT_CODE_PROVIDER_NOT_FOUND = -1;

    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    static final int RESULT_CODE_WRONG_CERTIFICATES = -2;
    private static final String TAG = "FontsContractCompat";
    static final LruCache<String, Typeface> sTypefaceCache = new LruCache<>(16);
    private static final SelfDestructiveThread sBackgroundThread = new SelfDestructiveThread("fonts", 10, 10000);
    static final Object sLock = new Object();

    @GuardedBy("sLock")
    static final SimpleArrayMap<String, ArrayList<SelfDestructiveThread$ReplyCallback<FontsContractCompat$TypefaceResult>>> sPendingReplies = new SimpleArrayMap<>();
    private static final Comparator<byte[]> sByteArrayComparator = new FontsContractCompat$5();

    private FontsContractCompat() {
    }

    @NonNull
    static FontsContractCompat$TypefaceResult getFontInternal(Context context, FontRequest fontRequest, int i) throws Throwable {
        try {
            FontsContractCompat$FontFamilyResult fontsContractCompat$FontFamilyResultFetchFonts = fetchFonts(context, null, fontRequest);
            if (fontsContractCompat$FontFamilyResultFetchFonts.getStatusCode() == 0) {
                Typeface typefaceCreateFromFontInfo = TypefaceCompat.createFromFontInfo(context, null, fontsContractCompat$FontFamilyResultFetchFonts.getFonts(), i);
                return new FontsContractCompat$TypefaceResult(typefaceCreateFromFontInfo, typefaceCreateFromFontInfo != null ? 0 : -3);
            }
            return new FontsContractCompat$TypefaceResult(null, fontsContractCompat$FontFamilyResultFetchFonts.getStatusCode() == 1 ? -2 : -3);
        } catch (PackageManager$NameNotFoundException unused) {
            return new FontsContractCompat$TypefaceResult(null, -1);
        }
    }

    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public static void resetCache() {
        sTypefaceCache.evictAll();
    }

    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public static Typeface getFontSync(Context context, FontRequest fontRequest, @Nullable ResourcesCompat$FontCallback resourcesCompat$FontCallback, @Nullable Handler handler, boolean z, int i, int i2) {
        String str = fontRequest.getIdentifier() + "-" + i2;
        Typeface typeface = sTypefaceCache.get(str);
        if (typeface != null) {
            if (resourcesCompat$FontCallback != null) {
                resourcesCompat$FontCallback.onFontRetrieved(typeface);
            }
            return typeface;
        }
        if (z && i == -1) {
            FontsContractCompat$TypefaceResult fontInternal = getFontInternal(context, fontRequest, i2);
            if (resourcesCompat$FontCallback != null) {
                if (fontInternal.mResult == 0) {
                    resourcesCompat$FontCallback.callbackSuccessAsync(fontInternal.mTypeface, handler);
                } else {
                    resourcesCompat$FontCallback.callbackFailAsync(fontInternal.mResult, handler);
                }
            }
            return fontInternal.mTypeface;
        }
        FontsContractCompat$1 fontsContractCompat$1 = new FontsContractCompat$1(context, fontRequest, i2, str);
        if (z) {
            try {
                return ((FontsContractCompat$TypefaceResult) sBackgroundThread.postAndWait(fontsContractCompat$1, i)).mTypeface;
            } catch (InterruptedException unused) {
                return null;
            }
        }
        FontsContractCompat$2 fontsContractCompat$2 = resourcesCompat$FontCallback == null ? null : new FontsContractCompat$2(resourcesCompat$FontCallback, handler);
        synchronized (sLock) {
            if (sPendingReplies.containsKey(str)) {
                if (fontsContractCompat$2 != null) {
                    sPendingReplies.get(str).add(fontsContractCompat$2);
                }
                return null;
            }
            if (fontsContractCompat$2 != null) {
                ArrayList<SelfDestructiveThread$ReplyCallback<FontsContractCompat$TypefaceResult>> arrayList = new ArrayList<>();
                arrayList.add(fontsContractCompat$2);
                sPendingReplies.put(str, arrayList);
            }
            sBackgroundThread.postAndReply(fontsContractCompat$1, new FontsContractCompat$3(str));
            return null;
        }
    }

    public static void requestFont(@NonNull Context context, @NonNull FontRequest fontRequest, @NonNull FontsContractCompat$FontRequestCallback fontsContractCompat$FontRequestCallback, @NonNull Handler handler) {
        handler.post(new FontsContractCompat$4(context, fontRequest, new Handler(), fontsContractCompat$FontRequestCallback));
    }

    @Nullable
    public static Typeface buildTypeface(@NonNull Context context, @Nullable CancellationSignal cancellationSignal, @NonNull FontsContractCompat$FontInfo[] fontsContractCompat$FontInfoArr) {
        return TypefaceCompat.createFromFontInfo(context, cancellationSignal, fontsContractCompat$FontInfoArr, 0);
    }

    @RequiresApi(19)
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public static Map<Uri, ByteBuffer> prepareFontData(Context context, FontsContractCompat$FontInfo[] fontsContractCompat$FontInfoArr, CancellationSignal cancellationSignal) {
        HashMap map = new HashMap();
        for (FontsContractCompat$FontInfo fontsContractCompat$FontInfo : fontsContractCompat$FontInfoArr) {
            if (fontsContractCompat$FontInfo.getResultCode() == 0) {
                Uri uri = fontsContractCompat$FontInfo.getUri();
                if (!map.containsKey(uri)) {
                    map.put(uri, TypefaceCompatUtil.mmap(context, cancellationSignal, uri));
                }
            }
        }
        return Collections.unmodifiableMap(map);
    }

    @NonNull
    public static FontsContractCompat$FontFamilyResult fetchFonts(@NonNull Context context, @Nullable CancellationSignal cancellationSignal, @NonNull FontRequest fontRequest) throws PackageManager$NameNotFoundException {
        ProviderInfo provider = getProvider(context.getPackageManager(), fontRequest, context.getResources());
        if (provider == null) {
            return new FontsContractCompat$FontFamilyResult(1, null);
        }
        return new FontsContractCompat$FontFamilyResult(0, getFontFromProvider(context, fontRequest, provider.authority, cancellationSignal));
    }

    @VisibleForTesting
    @Nullable
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public static ProviderInfo getProvider(@NonNull PackageManager packageManager, @NonNull FontRequest fontRequest, @Nullable Resources resources) throws PackageManager$NameNotFoundException {
        String providerAuthority = fontRequest.getProviderAuthority();
        ProviderInfo providerInfoResolveContentProvider = packageManager.resolveContentProvider(providerAuthority, 0);
        if (providerInfoResolveContentProvider == null) {
            throw new PackageManager$NameNotFoundException("No package found for authority: " + providerAuthority);
        }
        if (!providerInfoResolveContentProvider.packageName.equals(fontRequest.getProviderPackage())) {
            throw new PackageManager$NameNotFoundException("Found content provider " + providerAuthority + ", but package was not " + fontRequest.getProviderPackage());
        }
        List<byte[]> listConvertToByteArrayList = convertToByteArrayList(packageManager.getPackageInfo(providerInfoResolveContentProvider.packageName, 64).signatures);
        Collections.sort(listConvertToByteArrayList, sByteArrayComparator);
        List<List<byte[]>> certificates = getCertificates(fontRequest, resources);
        for (int i = 0; i < certificates.size(); i++) {
            ArrayList arrayList = new ArrayList(certificates.get(i));
            Collections.sort(arrayList, sByteArrayComparator);
            if (equalsByteArrayList(listConvertToByteArrayList, arrayList)) {
                return providerInfoResolveContentProvider;
            }
        }
        return null;
    }

    private static List<List<byte[]>> getCertificates(FontRequest fontRequest, Resources resources) {
        if (fontRequest.getCertificates() != null) {
            return fontRequest.getCertificates();
        }
        return FontResourcesParserCompat.readCerts(resources, fontRequest.getCertificatesArrayResId());
    }

    private static boolean equalsByteArrayList(List<byte[]> list, List<byte[]> list2) {
        if (list.size() != list2.size()) {
            return false;
        }
        for (int i = 0; i < list.size(); i++) {
            if (!Arrays.equals(list.get(i), list2.get(i))) {
                return false;
            }
        }
        return true;
    }

    private static List<byte[]> convertToByteArrayList(Signature[] signatureArr) {
        ArrayList arrayList = new ArrayList();
        for (Signature signature : signatureArr) {
            arrayList.add(signature.toByteArray());
        }
        return arrayList;
    }

    @VisibleForTesting
    @NonNull
    static FontsContractCompat$FontInfo[] getFontFromProvider(Context context, FontRequest fontRequest, String str, CancellationSignal cancellationSignal) {
        Cursor cursorQuery;
        Uri uriWithAppendedId;
        ArrayList arrayList = new ArrayList();
        Uri uriBuild = new Uri$Builder().scheme("content").authority(str).build();
        Uri uriBuild2 = new Uri$Builder().scheme("content").authority(str).appendPath("file").build();
        Cursor cursor = null;
        try {
            if (Build$VERSION.SDK_INT > 16) {
                cursorQuery = context.getContentResolver().query(uriBuild, new String[]{"_id", "file_id", "font_ttc_index", "font_variation_settings", "font_weight", "font_italic", "result_code"}, "query = ?", new String[]{fontRequest.getQuery()}, null, cancellationSignal);
            } else {
                cursorQuery = context.getContentResolver().query(uriBuild, new String[]{"_id", "file_id", "font_ttc_index", "font_variation_settings", "font_weight", "font_italic", "result_code"}, "query = ?", new String[]{fontRequest.getQuery()}, null);
            }
            cursor = cursorQuery;
            if (cursor != null && cursor.getCount() > 0) {
                int columnIndex = cursor.getColumnIndex("result_code");
                ArrayList arrayList2 = new ArrayList();
                int columnIndex2 = cursor.getColumnIndex("_id");
                int columnIndex3 = cursor.getColumnIndex("file_id");
                int columnIndex4 = cursor.getColumnIndex("font_ttc_index");
                int columnIndex5 = cursor.getColumnIndex("font_weight");
                int columnIndex6 = cursor.getColumnIndex("font_italic");
                while (cursor.moveToNext()) {
                    int i = columnIndex != -1 ? cursor.getInt(columnIndex) : 0;
                    int i2 = columnIndex4 != -1 ? cursor.getInt(columnIndex4) : 0;
                    if (columnIndex3 == -1) {
                        uriWithAppendedId = ContentUris.withAppendedId(uriBuild, cursor.getLong(columnIndex2));
                    } else {
                        uriWithAppendedId = ContentUris.withAppendedId(uriBuild2, cursor.getLong(columnIndex3));
                    }
                    arrayList2.add(new FontsContractCompat$FontInfo(uriWithAppendedId, i2, columnIndex5 != -1 ? cursor.getInt(columnIndex5) : 400, columnIndex6 != -1 && cursor.getInt(columnIndex6) == 1, i));
                }
                arrayList = arrayList2;
            }
            if (cursor != null) {
                cursor.close();
            }
            return (FontsContractCompat$FontInfo[]) arrayList.toArray(new FontsContractCompat$FontInfo[0]);
        } finally {
        }
    }
}

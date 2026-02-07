package android.support.v4.graphics;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.CancellationSignal;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo$Scope;
import android.support.v4.content.res.FontResourcesParserCompat$FontFamilyFilesResourceEntry;
import android.support.v4.content.res.FontResourcesParserCompat$FontFileResourceEntry;
import android.support.v4.provider.FontsContractCompat$FontInfo;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
@RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
class TypefaceCompatBaseImpl {
    private static final String CACHE_FILE_PREFIX = "cached_font_";
    private static final String TAG = "TypefaceCompatBaseImpl";

    TypefaceCompatBaseImpl() {
    }

    private static <T> T findBestFont(T[] tArr, int i, TypefaceCompatBaseImpl$StyleExtractor<T> typefaceCompatBaseImpl$StyleExtractor) {
        int i2 = (i & 1) == 0 ? 400 : 700;
        boolean z = (i & 2) != 0;
        int i3 = Integer.MAX_VALUE;
        T t = null;
        for (T t2 : tArr) {
            int iAbs = (Math.abs(typefaceCompatBaseImpl$StyleExtractor.getWeight(t2) - i2) * 2) + (typefaceCompatBaseImpl$StyleExtractor.isItalic(t2) == z ? 0 : 1);
            if (t == null || i3 > iAbs) {
                t = t2;
                i3 = iAbs;
            }
        }
        return t;
    }

    protected FontsContractCompat$FontInfo findBestInfo(FontsContractCompat$FontInfo[] fontsContractCompat$FontInfoArr, int i) {
        return (FontsContractCompat$FontInfo) findBestFont(fontsContractCompat$FontInfoArr, i, new TypefaceCompatBaseImpl$1(this));
    }

    protected Typeface createFromInputStream(Context context, InputStream inputStream) {
        File tempFile = TypefaceCompatUtil.getTempFile(context);
        if (tempFile == null) {
            return null;
        }
        try {
            if (TypefaceCompatUtil.copyToFile(tempFile, inputStream)) {
                return Typeface.createFromFile(tempFile.getPath());
            }
            return null;
        } catch (RuntimeException unused) {
            return null;
        } finally {
            tempFile.delete();
        }
    }

    public Typeface createFromFontInfo(Context context, @Nullable CancellationSignal cancellationSignal, @NonNull FontsContractCompat$FontInfo[] fontsContractCompat$FontInfoArr, int i) throws Throwable {
        InputStream inputStreamOpenInputStream;
        InputStream inputStream = null;
        if (fontsContractCompat$FontInfoArr.length < 1) {
            return null;
        }
        try {
            inputStreamOpenInputStream = context.getContentResolver().openInputStream(findBestInfo(fontsContractCompat$FontInfoArr, i).getUri());
        } catch (IOException unused) {
            inputStreamOpenInputStream = null;
        } catch (Throwable th) {
            th = th;
        }
        try {
            Typeface typefaceCreateFromInputStream = createFromInputStream(context, inputStreamOpenInputStream);
            TypefaceCompatUtil.closeQuietly(inputStreamOpenInputStream);
            return typefaceCreateFromInputStream;
        } catch (IOException unused2) {
            TypefaceCompatUtil.closeQuietly(inputStreamOpenInputStream);
            return null;
        } catch (Throwable th2) {
            th = th2;
            inputStream = inputStreamOpenInputStream;
            TypefaceCompatUtil.closeQuietly(inputStream);
            throw th;
        }
    }

    private FontResourcesParserCompat$FontFileResourceEntry findBestEntry(FontResourcesParserCompat$FontFamilyFilesResourceEntry fontResourcesParserCompat$FontFamilyFilesResourceEntry, int i) {
        return (FontResourcesParserCompat$FontFileResourceEntry) findBestFont(fontResourcesParserCompat$FontFamilyFilesResourceEntry.getEntries(), i, new TypefaceCompatBaseImpl$2(this));
    }

    @Nullable
    public Typeface createFromFontFamilyFilesResourceEntry(Context context, FontResourcesParserCompat$FontFamilyFilesResourceEntry fontResourcesParserCompat$FontFamilyFilesResourceEntry, Resources resources, int i) {
        FontResourcesParserCompat$FontFileResourceEntry fontResourcesParserCompat$FontFileResourceEntryFindBestEntry = findBestEntry(fontResourcesParserCompat$FontFamilyFilesResourceEntry, i);
        if (fontResourcesParserCompat$FontFileResourceEntryFindBestEntry == null) {
            return null;
        }
        return TypefaceCompat.createFromResourcesFontFile(context, resources, fontResourcesParserCompat$FontFileResourceEntryFindBestEntry.getResourceId(), fontResourcesParserCompat$FontFileResourceEntryFindBestEntry.getFileName(), i);
    }

    @Nullable
    public Typeface createFromResourcesFontFile(Context context, Resources resources, int i, String str, int i2) {
        File tempFile = TypefaceCompatUtil.getTempFile(context);
        if (tempFile == null) {
            return null;
        }
        try {
            if (TypefaceCompatUtil.copyToFile(tempFile, resources, i)) {
                return Typeface.createFromFile(tempFile.getPath());
            }
            return null;
        } catch (RuntimeException unused) {
            return null;
        } finally {
            tempFile.delete();
        }
    }
}

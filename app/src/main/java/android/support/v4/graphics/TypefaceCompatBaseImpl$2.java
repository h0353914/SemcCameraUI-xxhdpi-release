package android.support.v4.graphics;

import android.support.v4.content.res.FontResourcesParserCompat$FontFileResourceEntry;

class TypefaceCompatBaseImpl$2 implements TypefaceCompatBaseImpl$StyleExtractor<FontResourcesParserCompat$FontFileResourceEntry> {
    final /* synthetic */ TypefaceCompatBaseImpl this$0;

    TypefaceCompatBaseImpl$2(TypefaceCompatBaseImpl typefaceCompatBaseImpl) {
        this.this$0 = typefaceCompatBaseImpl;
    }

    @Override // android.support.v4.graphics.TypefaceCompatBaseImpl$StyleExtractor
    public /* bridge */ /* synthetic */ int getWeight(FontResourcesParserCompat$FontFileResourceEntry fontResourcesParserCompat$FontFileResourceEntry) {
        return getWeight2(fontResourcesParserCompat$FontFileResourceEntry);
    }

    @Override // android.support.v4.graphics.TypefaceCompatBaseImpl$StyleExtractor
    public /* bridge */ /* synthetic */ boolean isItalic(FontResourcesParserCompat$FontFileResourceEntry fontResourcesParserCompat$FontFileResourceEntry) {
        return isItalic2(fontResourcesParserCompat$FontFileResourceEntry);
    }

    /* JADX INFO: renamed from: getWeight, reason: avoid collision after fix types in other method */
    public int getWeight2(FontResourcesParserCompat$FontFileResourceEntry fontResourcesParserCompat$FontFileResourceEntry) {
        return fontResourcesParserCompat$FontFileResourceEntry.getWeight();
    }

    /* JADX INFO: renamed from: isItalic, reason: avoid collision after fix types in other method */
    public boolean isItalic2(FontResourcesParserCompat$FontFileResourceEntry fontResourcesParserCompat$FontFileResourceEntry) {
        return fontResourcesParserCompat$FontFileResourceEntry.isItalic();
    }
}

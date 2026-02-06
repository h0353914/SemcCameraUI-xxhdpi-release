package android.support.v4.graphics;

import android.support.v4.provider.FontsContractCompat$FontInfo;

class TypefaceCompatBaseImpl$1 implements TypefaceCompatBaseImpl$StyleExtractor<FontsContractCompat$FontInfo> {
    final /* synthetic */ TypefaceCompatBaseImpl this$0;

    TypefaceCompatBaseImpl$1(TypefaceCompatBaseImpl typefaceCompatBaseImpl) {
        this.this$0 = typefaceCompatBaseImpl;
    }

    @Override // android.support.v4.graphics.TypefaceCompatBaseImpl$StyleExtractor
    public /* bridge */ /* synthetic */ int getWeight(FontsContractCompat$FontInfo fontsContractCompat$FontInfo) {
        return getWeight2(fontsContractCompat$FontInfo);
    }

    @Override // android.support.v4.graphics.TypefaceCompatBaseImpl$StyleExtractor
    public /* bridge */ /* synthetic */ boolean isItalic(FontsContractCompat$FontInfo fontsContractCompat$FontInfo) {
        return isItalic2(fontsContractCompat$FontInfo);
    }

    /* JADX INFO: renamed from: getWeight, reason: avoid collision after fix types in other method */
    public int getWeight2(FontsContractCompat$FontInfo fontsContractCompat$FontInfo) {
        return fontsContractCompat$FontInfo.getWeight();
    }

    /* JADX INFO: renamed from: isItalic, reason: avoid collision after fix types in other method */
    public boolean isItalic2(FontsContractCompat$FontInfo fontsContractCompat$FontInfo) {
        return fontsContractCompat$FontInfo.isItalic();
    }
}

package android.support.v4.content.res;

import android.support.annotation.NonNull;

public final class FontResourcesParserCompat$FontFamilyFilesResourceEntry implements FontResourcesParserCompat$FamilyResourceEntry {

    @NonNull
    private final FontResourcesParserCompat$FontFileResourceEntry[] mEntries;

    public FontResourcesParserCompat$FontFamilyFilesResourceEntry(@NonNull FontResourcesParserCompat$FontFileResourceEntry[] fontResourcesParserCompat$FontFileResourceEntryArr) {
        this.mEntries = fontResourcesParserCompat$FontFileResourceEntryArr;
    }

    @NonNull
    public FontResourcesParserCompat$FontFileResourceEntry[] getEntries() {
        return this.mEntries;
    }
}

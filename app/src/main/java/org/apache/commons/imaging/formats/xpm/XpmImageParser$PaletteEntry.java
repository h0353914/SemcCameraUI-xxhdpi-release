package org.apache.commons.imaging.formats.xpm;

class XpmImageParser$PaletteEntry {
    int colorArgb;
    int gray4LevelArgb;
    int grayArgb;
    boolean haveColor;
    boolean haveGray;
    boolean haveGray4Level;
    boolean haveMono;
    int index;
    int monoArgb;

    private XpmImageParser$PaletteEntry() {
        this.haveColor = false;
        this.haveGray = false;
        this.haveGray4Level = false;
        this.haveMono = false;
    }

    /* synthetic */ XpmImageParser$PaletteEntry(XpmImageParser$1 xpmImageParser$1) {
        this();
    }

    int getBestARGB() {
        if (this.haveColor) {
            return this.colorArgb;
        }
        if (this.haveGray) {
            return this.grayArgb;
        }
        if (this.haveGray4Level) {
            return this.gray4LevelArgb;
        }
        if (this.haveMono) {
            return this.monoArgb;
        }
        return 0;
    }
}

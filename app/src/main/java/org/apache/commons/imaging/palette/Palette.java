package org.apache.commons.imaging.palette;

import org.apache.commons.imaging.ImageWriteException;

/* JADX INFO: loaded from: classes.dex */
public interface Palette {
    int getEntry(int i);

    int getPaletteIndex(int i) throws ImageWriteException;

    int length();
}

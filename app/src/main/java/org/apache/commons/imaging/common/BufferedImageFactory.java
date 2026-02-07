package org.apache.commons.imaging.common;

import java.awt.image.BufferedImage;

/* JADX INFO: loaded from: classes.dex */
public interface BufferedImageFactory {
    BufferedImage getColorBufferedImage(int i, int i2, boolean z);

    BufferedImage getGrayscaleBufferedImage(int i, int i2, boolean z);
}

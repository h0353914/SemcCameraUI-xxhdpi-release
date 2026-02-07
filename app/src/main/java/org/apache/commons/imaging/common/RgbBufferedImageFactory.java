package org.apache.commons.imaging.common;

import java.awt.image.BufferedImage;

/* JADX INFO: loaded from: classes.dex */
public class RgbBufferedImageFactory implements BufferedImageFactory {
    @Override // org.apache.commons.imaging.common.BufferedImageFactory
    public BufferedImage getColorBufferedImage(int i, int i2, boolean z) {
        if (z) {
            return new BufferedImage(i, i2, 2);
        }
        return new BufferedImage(i, i2, 1);
    }

    @Override // org.apache.commons.imaging.common.BufferedImageFactory
    public BufferedImage getGrayscaleBufferedImage(int i, int i2, boolean z) {
        return getColorBufferedImage(i, i2, z);
    }
}

package org.apache.commons.imaging.palette;

import java.util.List;
import org.apache.commons.imaging.ImageWriteException;

/* JADX INFO: loaded from: classes.dex */
public interface MedianCut {
    boolean performNextMedianCut(List<ColorGroup> list, boolean z) throws ImageWriteException;
}

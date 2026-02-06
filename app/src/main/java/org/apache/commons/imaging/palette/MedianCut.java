package org.apache.commons.imaging.palette;

import java.util.List;
import org.apache.commons.imaging.ImageWriteException;

public interface MedianCut {
    boolean performNextMedianCut(List<ColorGroup> list, boolean z) throws ImageWriteException;
}

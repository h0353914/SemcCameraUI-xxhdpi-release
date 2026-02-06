package com.sonyericsson.android.camera.device;

import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.android.camera.util.capability.PlatformCapability;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

class CameraDeviceUtil {
    public static final String TAG = "CameraDeviceUtil";
    private static final Comparator<int[]> mSupportedFpsComparator = new CameraDeviceUtil$1();

    CameraDeviceUtil() {
    }

    static int[] computePreviewFpsRange(CameraInfo$CameraId cameraInfo$CameraId, int i, List<int[]> list) {
        if (CamLog.VERBOSE) {
            CamLog.d("computePreviewFpsRange: " + i);
        }
        if (CamLog.VERBOSE) {
            CamLog.d("computePreviewFpsRange: the number of supported values: " + list.size());
        }
        if (list.size() == 1) {
            int i2 = list.get(0)[1];
            int i3 = list.get(0)[0];
            if (CamLog.VERBOSE) {
                CamLog.d("Max fps: " + i2 + ", Min fps: " + i3);
            }
            if (i2 > 0) {
                return new int[]{i3, i2};
            }
            return new int[0];
        }
        int maxPreviewFps = PlatformCapability.getMaxPreviewFps(cameraInfo$CameraId);
        if (i <= maxPreviewFps) {
            maxPreviewFps = i;
        } else if (CamLog.VERBOSE) {
            CamLog.d("targetFps over the all supported fps, shrink target to supported");
        }
        return getFpsRange(maxPreviewFps, list);
    }

    private static int[] getFpsRange(int i, List<int[]> list) {
        int i2;
        int i3;
        Collections.sort(list, mSupportedFpsComparator);
        Iterator<int[]> it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                i2 = 0;
                i3 = 0;
                break;
            }
            int[] next = it.next();
            i3 = next[1];
            i2 = next[0];
            if (CamLog.VERBOSE) {
                CamLog.d("getFpsRange: Supported frame rate: " + i2 + ", " + i3);
                StringBuilder sb = new StringBuilder();
                sb.append("getFpsRange: current candidate max fps: ");
                sb.append(0);
                CamLog.d(sb.toString());
            }
            if (i <= i3) {
                if (i >= i2) {
                    break;
                }
                if (CamLog.VERBOSE) {
                    CamLog.d("targetFps under the supported min frame");
                }
            } else if (CamLog.VERBOSE) {
                CamLog.d("targetFps over the supported max frame");
            }
        }
        if (CamLog.VERBOSE) {
            CamLog.d("Max: " + i3 + ", Min: " + i2);
        }
        if (i3 > 0) {
            return new int[]{i2, i3};
        }
        return new int[0];
    }
}

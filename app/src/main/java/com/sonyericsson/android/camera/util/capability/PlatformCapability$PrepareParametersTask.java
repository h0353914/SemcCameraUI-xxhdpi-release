package com.sonyericsson.android.camera.util.capability;

import com.sonyericsson.android.camera.util.CamLog;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.Callable;

class PlatformCapability$PrepareParametersTask implements Callable<Map<PlatformCapability$HolderType, ParameterHolder>> {
    private PlatformCapability$PrepareParametersTask() {
    }

    /* synthetic */ PlatformCapability$PrepareParametersTask(PlatformCapability$1 platformCapability$1) {
        this();
    }

    @Override // java.util.concurrent.Callable
    public /* bridge */ /* synthetic */ Map<PlatformCapability$HolderType, ParameterHolder> call() throws Exception {
        return call2();
    }

    @Override // java.util.concurrent.Callable
    /* JADX INFO: renamed from: call, reason: avoid collision after fix types in other method */
    public Map<PlatformCapability$HolderType, ParameterHolder> call2() throws Exception {
        if (CamLog.DEBUG) {
            CamLog.d("PrepareParametersTask: E");
        }
        HashMap map = new HashMap();
        map.put(PlatformCapability$HolderType.MEDIA_CODEC, new MediaCodecParametersHolder());
        Iterator it = map.values().iterator();
        while (it.hasNext()) {
            ((ParameterHolder) it.next()).prepare();
        }
        if (CamLog.DEBUG) {
            CamLog.d("PrepareParametersTask: X");
        }
        return map;
    }
}

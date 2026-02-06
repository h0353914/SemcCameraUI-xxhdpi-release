package com.sonyericsson.cameracommon.systemmonitor;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.psm.sysmonservice.ISysmonService$Stub;

class ThermalAlertReceiver$ServiceConnectionSysmon implements ServiceConnection {
    final /* synthetic */ ThermalAlertReceiver this$0;

    ThermalAlertReceiver$ServiceConnectionSysmon(ThermalAlertReceiver thermalAlertReceiver) {
        this.this$0 = thermalAlertReceiver;
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        ThermalAlertReceiver.access$002(this.this$0, ISysmonService$Stub.asInterface(iBinder));
        if (ThermalAlertReceiver.access$000(this.this$0) != null) {
            try {
                int thermalLevelForCamera = ThermalAlertReceiver.access$000(this.this$0).getThermalLevelForCamera();
                ThermalAlertReceiver.access$100(this.this$0, thermalLevelForCamera, "sysmon");
                ThermalAlertReceiver.access$200(this.this$0, thermalLevelForCamera, ThermalAlertReceiver.access$000(this.this$0).getCameraLowTempBurnTimeoutSec());
            } catch (Exception e) {
                CamLog.e("sysmon ServiceConnection failed.", e);
            }
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        ThermalAlertReceiver.access$002(this.this$0, null);
    }
}

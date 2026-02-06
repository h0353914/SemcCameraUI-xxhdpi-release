package com.sonyericsson.android.camera.util.capability;

import android.content.Context;
import android.content.SharedPreferences;
import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.support.annotation.NonNull;
import android.view.InputDevice;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.android.camera.util.SignatureUtil;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class PlatformCapabilityList {
    private static final String KEY_SENSOR_CAMERA_LIFT_TRIGGER = "sensor_camera_lift_trigger";
    private static final String KEY_SIDE_SENSE = "somc_side_sense";
    private static final String KEY_WEARABLE = "somc_wearable";
    private static final String SENSOR_CAMERA_LIFT_TRIGGER = "com.sonymobile.sensor.camera_lift_trigger";
    private static final String TAG = "PlatformCapabilityList";
    private static final String WEARABLE_BRIDGE_PACKAGE_NAME = "com.sonymobile.cameracommon.wearablebridge";
    public final CapabilityItem<Boolean> CAMERA_LIFT_TRIGGER;
    public final CapabilityItem<Boolean> SIDE_SENSE;
    public final CapabilityItem<Boolean> WEARABLE;
    private final List<CapabilityItem<?>> mValues;

    public PlatformCapabilityList(Context context, SharedPreferences sharedPreferences) {
        if (CamLog.VERBOSE) {
            CamLog.d("loadPlatformCapabilityFromSharedPreferences");
        }
        this.CAMERA_LIFT_TRIGGER = new BooleanCapabilityItem("sensor_camera_lift_trigger", sharedPreferences);
        this.SIDE_SENSE = new BooleanCapabilityItem("somc_side_sense", sharedPreferences);
        this.WEARABLE = new BooleanCapabilityItem("somc_wearable", sharedPreferences);
        this.mValues = createList();
    }

    public PlatformCapabilityList(Context context) {
        if (CamLog.VERBOSE) {
            CamLog.d("loadPlatformCapabilityFromDevice");
        }
        this.CAMERA_LIFT_TRIGGER = new BooleanCapabilityItem("sensor_camera_lift_trigger", Boolean.valueOf(isLiftTriggerSupported(context)));
        this.SIDE_SENSE = new BooleanCapabilityItem("somc_side_sense", Boolean.valueOf(isSideSenseSupported()));
        this.WEARABLE = new BooleanCapabilityItem("somc_wearable", Boolean.valueOf(isWearableSupported(context)));
        this.mValues = createList();
    }

    private List<CapabilityItem<?>> createList() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.CAMERA_LIFT_TRIGGER);
        arrayList.add(this.SIDE_SENSE);
        arrayList.add(this.WEARABLE);
        return arrayList;
    }

    @NonNull
    public List<CapabilityItem<?>> values() {
        return this.mValues;
    }

    private boolean isLiftTriggerSupported(Context context) {
        Iterator<Sensor> it = ((SensorManager) context.getSystemService("sensor")).getSensorList(-1).iterator();
        while (it.hasNext()) {
            if (it.next().getStringType().equals("com.sonymobile.sensor.camera_lift_trigger")) {
                return true;
            }
        }
        return false;
    }

    private boolean isSideSenseSupported() {
        for (int i : InputDevice.getDeviceIds()) {
            if (InputDevice.getDevice(i).supportsSource(536870912)) {
                return true;
            }
        }
        return false;
    }

    private boolean isWearableSupported(Context context) {
        return SignatureUtil.isAvailable(context, "com.sonymobile.cameracommon.wearablebridge");
    }
}

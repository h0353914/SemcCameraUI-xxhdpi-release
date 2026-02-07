package com.sonyericsson.cameracommon.systemmonitor;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.BatteryManager;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.sonyericsson.android.camera.util.CamLog;

/* JADX INFO: loaded from: classes.dex */
public class BatteryChangedReceiver extends BroadcastReceiver {
    private static final boolean BATTERY_CHECK_ENABLED;
    private static final String TAG = "BatteryChangedReceiver";
    private static final int THRESHOLD_BATTERY_LEVEL;
    public static final int THRESHOLD_LOW_BATTERY_LEVEL;
    private final Context mContext;
    private final Handler mHandler;
    private final BatteryChangedReceiver$BatteryChangedReceiverListener mListener;
    private boolean mIsAlreadyBcl = false;
    private boolean mIsActive = true;
    private int mBatteryLevel = 100;
    private int mBatteryStatus = 1;
    private int mPlugType = 0;
    private int mBatteryTemperature = 0;
    private int mHealth = 1;

    static /* synthetic */ BatteryChangedReceiver$BatteryChangedReceiverListener access$000(BatteryChangedReceiver batteryChangedReceiver) {
        return batteryChangedReceiver.mListener;
    }

    static {
        if ("msm8996".equalsIgnoreCase(Build.BOARD) || "sdm845".equalsIgnoreCase(Build.BOARD)) {
            THRESHOLD_BATTERY_LEVEL = 5;
            THRESHOLD_LOW_BATTERY_LEVEL = 15;
            BATTERY_CHECK_ENABLED = true;
        } else {
            THRESHOLD_BATTERY_LEVEL = 1;
            THRESHOLD_LOW_BATTERY_LEVEL = 15;
            BATTERY_CHECK_ENABLED = true;
        }
    }

    public BatteryChangedReceiver(Context context, BatteryChangedReceiver$BatteryChangedReceiverListener batteryChangedReceiver$BatteryChangedReceiverListener) {
        this.mContext = context;
        this.mListener = batteryChangedReceiver$BatteryChangedReceiverListener;
        this.mHandler = new Handler(context.getMainLooper());
    }

    public void onCreate() {
        if (CamLog.VERBOSE) {
            CamLog.d("onCreate");
        }
        IntentFilter intentFilter = new IntentFilter("android.intent.action.BATTERY_CHANGED");
        intentFilter.setPriority(999);
        this.mContext.registerReceiver(this, intentFilter);
    }

    public void onDestroy() {
        if (CamLog.VERBOSE) {
            CamLog.d("onDestroy");
        }
        this.mContext.unregisterReceiver(this);
    }

    public void onResume() {
        if (CamLog.VERBOSE) {
            CamLog.d("onResume");
        }
        this.mIsAlreadyBcl = false;
        this.mIsActive = false;
    }

    public void onPause() {
        if (CamLog.VERBOSE) {
            CamLog.d("onPause");
        }
        this.mIsAlreadyBcl = false;
        this.mIsActive = true;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (this.mIsActive) {
            if (CamLog.VERBOSE) {
                CamLog.d("Activity is onPause, ignore bcl intent.");
                return;
            }
            return;
        }
        if (CamLog.VERBOSE) {
            CamLog.d("Receive action: " + intent.getAction());
        }
        if (intent.getAction().equals("android.intent.action.BATTERY_CHANGED")) {
            int i = this.mBatteryLevel;
            this.mBatteryLevel = intent.getIntExtra("level", 100);
            int i2 = this.mBatteryStatus;
            this.mBatteryStatus = intent.getIntExtra("status", 1);
            int i3 = this.mPlugType;
            this.mPlugType = intent.getIntExtra("plugged", 0);
            int i4 = this.mBatteryTemperature;
            this.mBatteryTemperature = intent.getIntExtra("temperature", 0);
            int i5 = this.mHealth;
            this.mHealth = intent.getIntExtra("health", 1);
            boolean z = this.mPlugType != 0;
            boolean z2 = i3 != 0;
            if (CamLog.VERBOSE) {
                Log.d("BatteryChangedReceiver", "level          " + i + " --> " + this.mBatteryLevel);
                Log.d("BatteryChangedReceiver", "status         " + i2 + " --> " + this.mBatteryStatus);
                Log.d("BatteryChangedReceiver", "plugType       " + i3 + " --> " + this.mPlugType);
                Log.d("BatteryChangedReceiver", "plugged        " + z2 + " --> " + z);
                Log.d("BatteryChangedReceiver", "temperature    " + i4 + " --> " + this.mBatteryTemperature);
                Log.d("BatteryChangedReceiver", "health         " + i5 + " --> " + this.mHealth);
            }
            if (checkBcl(this.mBatteryLevel, false)) {
                return;
            }
            if (isCheckEnabled() && this.mBatteryLevel <= THRESHOLD_LOW_BATTERY_LEVEL && i > THRESHOLD_LOW_BATTERY_LEVEL && i != this.mBatteryLevel) {
                notifyLowBattery();
            }
            notifyBatteryLevel(this.mBatteryLevel);
        }
    }

    public void checkStartupStatus() {
        this.mIsAlreadyBcl = false;
        int intProperty = ((BatteryManager) this.mContext.getSystemService("batterymanager")).getIntProperty(4);
        if (CamLog.VERBOSE) {
            CamLog.d("checkStartupStatus() : Battery Capacity = " + intProperty);
        }
        this.mBatteryLevel = intProperty;
        if (checkBcl(this.mBatteryLevel, true)) {
            return;
        }
        if (isCheckEnabled() && this.mBatteryLevel <= THRESHOLD_LOW_BATTERY_LEVEL) {
            notifyLowBattery();
        }
        notifyBatteryLevel(this.mBatteryLevel);
    }

    private boolean checkBcl(int i, boolean z) {
        if (this.mIsAlreadyBcl || !isCheckEnabled() || i > THRESHOLD_BATTERY_LEVEL) {
            return false;
        }
        this.mIsAlreadyBcl = true;
        if (Thread.currentThread().equals(Looper.getMainLooper().getThread())) {
            this.mListener.onReachBatteryLimit(z);
        } else {
            this.mHandler.post(new BatteryChangedReceiver$1(this, z));
        }
        return true;
    }

    public boolean isAlreadyBcl() {
        return this.mIsAlreadyBcl;
    }

    private void notifyLowBattery() {
        this.mListener.onReachLowBattery();
    }

    private void notifyBatteryLevel(int i) {
        this.mListener.onBatteryLevelChanged(i);
    }

    public int getBatteryLevel() {
        return this.mBatteryLevel;
    }

    public static boolean isCheckEnabled() {
        return BATTERY_CHECK_ENABLED;
    }
}

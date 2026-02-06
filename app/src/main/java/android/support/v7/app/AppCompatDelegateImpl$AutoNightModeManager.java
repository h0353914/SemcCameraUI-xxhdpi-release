package android.support.v7.app;

import android.content.BroadcastReceiver;
import android.content.IntentFilter;
import android.support.annotation.NonNull;
import android.support.annotation.VisibleForTesting;

@VisibleForTesting
final class AppCompatDelegateImpl$AutoNightModeManager {
    private BroadcastReceiver mAutoTimeChangeReceiver;
    private IntentFilter mAutoTimeChangeReceiverFilter;
    private boolean mIsNight;
    private TwilightManager mTwilightManager;
    final /* synthetic */ AppCompatDelegateImpl this$0;

    AppCompatDelegateImpl$AutoNightModeManager(@NonNull AppCompatDelegateImpl appCompatDelegateImpl, TwilightManager twilightManager) {
        this.this$0 = appCompatDelegateImpl;
        this.mTwilightManager = twilightManager;
        this.mIsNight = twilightManager.isNight();
    }

    int getApplyableNightMode() {
        this.mIsNight = this.mTwilightManager.isNight();
        return this.mIsNight ? 2 : 1;
    }

    void dispatchTimeChanged() {
        boolean zIsNight = this.mTwilightManager.isNight();
        if (zIsNight != this.mIsNight) {
            this.mIsNight = zIsNight;
            this.this$0.applyDayNight();
        }
    }

    void setup() {
        cleanup();
        if (this.mAutoTimeChangeReceiver == null) {
            this.mAutoTimeChangeReceiver = new AppCompatDelegateImpl$AutoNightModeManager$1(this);
        }
        if (this.mAutoTimeChangeReceiverFilter == null) {
            this.mAutoTimeChangeReceiverFilter = new IntentFilter();
            this.mAutoTimeChangeReceiverFilter.addAction("android.intent.action.TIME_SET");
            this.mAutoTimeChangeReceiverFilter.addAction("android.intent.action.TIMEZONE_CHANGED");
            this.mAutoTimeChangeReceiverFilter.addAction("android.intent.action.TIME_TICK");
        }
        this.this$0.mContext.registerReceiver(this.mAutoTimeChangeReceiver, this.mAutoTimeChangeReceiverFilter);
    }

    void cleanup() {
        if (this.mAutoTimeChangeReceiver != null) {
            this.this$0.mContext.unregisterReceiver(this.mAutoTimeChangeReceiver);
            this.mAutoTimeChangeReceiver = null;
        }
    }
}

package com.sonyericsson.android.camera.parameter;

import android.os.Build;
import com.sonyericsson.android.camera.setting.UserSettingsLoader$OnLoadCompletedListener;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.android.camera.util.PerfLog;
import java.util.Iterator;
import java.util.LinkedList;

class UserSettingsLoaderImpl$LoadTask implements Runnable {
    final /* synthetic */ UserSettingsLoaderImpl this$0;

    private UserSettingsLoaderImpl$LoadTask(UserSettingsLoaderImpl userSettingsLoaderImpl) {
        this.this$0 = userSettingsLoaderImpl;
    }

    /* synthetic */ UserSettingsLoaderImpl$LoadTask(UserSettingsLoaderImpl userSettingsLoaderImpl, UserSettingsLoaderImpl$1 userSettingsLoaderImpl$1) {
        this(userSettingsLoaderImpl);
    }

    @Override // java.lang.Runnable
    public void run() {
        LinkedList linkedListAccess$900;
        synchronized (this.this$0) {
            if (UserSettingsLoaderImpl.access$000(this.this$0)) {
                return;
            }
            PerfLog.LOAD_USER_SETTING_ALL.begin();
            String str = Build.FINGERPRINT;
            String string = this.this$0.getSharedPreferencesAccessor().readString("android.os.Build.FINGERPRINT", "");
            if ("".equals(string)) {
                CamLog.d("Initialize UserSettings data by default values due to no fingerprint.");
                UserSettingsLoaderImpl.access$300(this.this$0, UserSettingsLoaderImpl.access$100(this.this$0), UserSettingsLoaderImpl.access$200(this.this$0));
            } else if (!str.equals(string)) {
                CamLog.d("Migrate UserSettings. stored-fingerprint:" + string + " current-fingerprint:" + str);
                CameraSettingsMigrator.migrate(UserSettingsLoaderImpl.access$100(this.this$0), UserSettingsLoaderImpl.access$200(this.this$0), this.this$0);
                this.this$0.getSharedPreferencesAccessor().writeString("android.os.Build.FINGERPRINT", str, true);
                synchronized (this.this$0) {
                    UserSettingsLoaderImpl.access$400(this.this$0).clear();
                    UserSettingsLoaderImpl.access$500(this.this$0).clear(UserSettingsLoaderImpl.access$200(this.this$0));
                }
                UserSettingsLoaderImpl.access$600(this.this$0).reset();
            }
            UserSettingsLoaderImpl.access$800(this.this$0, UserSettingsLoaderImpl.access$700(this.this$0));
            PerfLog.LOAD_USER_SETTING_ALL.end();
            synchronized (this.this$0) {
                UserSettingsLoaderImpl.access$002(this.this$0, true);
                linkedListAccess$900 = UserSettingsLoaderImpl.access$900(this.this$0);
            }
            Iterator it = linkedListAccess$900.iterator();
            while (it.hasNext()) {
                ((UserSettingsLoader$OnLoadCompletedListener) it.next()).onLoadCompleted();
            }
        }
    }
}

package com.sonyericsson.android.camera.parameter;

class UserSettingsLoaderImpl$1 implements Runnable {
    final /* synthetic */ UserSettingsLoaderImpl this$0;

    UserSettingsLoaderImpl$1(UserSettingsLoaderImpl userSettingsLoaderImpl) {
        this.this$0 = userSettingsLoaderImpl;
    }

    @Override // java.lang.Runnable
    public void run() {
        synchronized (UserSettingsLoaderImpl.access$1100(this.this$0)) {
            UserSettingsLoaderImpl.access$1100(this.this$0).notifyAll();
        }
    }
}

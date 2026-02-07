package com.sonyericsson.cameracommon.sound;

import java.io.File;

/* JADX INFO: loaded from: classes.dex */
public enum SoundPlayer$Type {
    SELF_TIMER_1SEC("selftimer_1sec.m4a", 2131623956),
    SELF_TIMER_3SEC("selftimer_3sec.m4a", 2131623957),
    SELF_TIMER_4SEC("selftimer_4sec.m4a", 2131623958);

    private final String[] SOUND_DIRS = {"/system/media/audio/ui/common/"};
    private final int resourceId;
    private final String soundName;

    static /* synthetic */ String access$000(SoundPlayer$Type soundPlayer$Type) {
        return soundPlayer$Type.getSoundFile();
    }

    static /* synthetic */ int access$100(SoundPlayer$Type soundPlayer$Type) {
        return soundPlayer$Type.resourceId;
    }

    SoundPlayer$Type(String str, int i) {
        this.soundName = str;
        this.resourceId = i;
    }

    private String getSoundFile() {
        if (!new File(this.SOUND_DIRS[0] + this.soundName).exists()) {
            return null;
        }
        return this.SOUND_DIRS[0] + this.soundName;
    }
}

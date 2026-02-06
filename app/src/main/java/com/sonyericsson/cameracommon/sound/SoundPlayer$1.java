package com.sonyericsson.cameracommon.sound;

import android.media.SoundPool;
import android.media.SoundPool$OnLoadCompleteListener;
import java.util.Iterator;

class SoundPlayer$1 implements SoundPool$OnLoadCompleteListener {
    final /* synthetic */ SoundPlayer this$0;

    SoundPlayer$1(SoundPlayer soundPlayer) {
        this.this$0 = soundPlayer;
    }

    @Override // android.media.SoundPool$OnLoadCompleteListener
    public void onLoadComplete(SoundPool soundPool, int i, int i2) {
        if (SoundPlayer.access$200(this.this$0) == null) {
            return;
        }
        if (i2 != 0) {
            for (SoundPlayer$Type soundPlayer$Type : SoundPlayer.access$300(this.this$0).keySet()) {
                if (((SoundPlayer$SoundLoad) SoundPlayer.access$300(this.this$0).get(soundPlayer$Type)).soundID == i) {
                    ((SoundPlayer$SoundLoad) SoundPlayer.access$300(this.this$0).get(soundPlayer$Type)).soundID = 0;
                    return;
                }
            }
            return;
        }
        Iterator it = SoundPlayer.access$300(this.this$0).keySet().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            SoundPlayer$Type soundPlayer$Type2 = (SoundPlayer$Type) it.next();
            if (((SoundPlayer$SoundLoad) SoundPlayer.access$300(this.this$0).get(soundPlayer$Type2)).soundID == i) {
                ((SoundPlayer$SoundLoad) SoundPlayer.access$300(this.this$0).get(soundPlayer$Type2)).isLoaded = true;
                break;
            }
        }
        if (i == SoundPlayer.access$400(this.this$0)) {
            SoundPlayer.access$402(this.this$0, 0);
            SoundPlayer.access$502(this.this$0, SoundPlayer.access$200(this.this$0).play(i, 1.0f, 1.0f, 0, 0, 1.0f));
        }
    }
}

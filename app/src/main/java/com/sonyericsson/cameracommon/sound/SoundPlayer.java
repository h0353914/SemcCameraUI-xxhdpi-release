package com.sonyericsson.cameracommon.sound;

import android.content.Context;
import android.media.AudioAttributes$Builder;
import android.media.SoundPool;
import android.media.SoundPool$Builder;
import android.media.SoundPool$OnLoadCompleteListener;
import android.support.annotation.NonNull;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public class SoundPlayer {
    private static final int ID_NOT_LOADED = 0;
    private static final int ID_NOT_PLAYED = 0;
    private static final int NUM_SOUND_STREAMS = 1;
    private static final int SOUND_POOL_LOAD_PRIORITY = 1;
    private Context mApplicationContext;
    private int mSoundIDToPlay = 0;
    private int mSoundIDPlayed = 0;
    private final Map<SoundPlayer$Type, SoundPlayer$SoundLoad> mSoundMap = new ConcurrentHashMap();
    private SoundPool$OnLoadCompleteListener mLoadCompleteListener = new SoundPlayer$1(this);
    private SoundPool mSoundPool = new SoundPool$Builder().setMaxStreams(1).setAudioAttributes(new AudioAttributes$Builder().setUsage(13).setFlags(1).setContentType(4).build()).build();

    static /* synthetic */ SoundPool access$200(SoundPlayer soundPlayer) {
        return soundPlayer.mSoundPool;
    }

    static /* synthetic */ Map access$300(SoundPlayer soundPlayer) {
        return soundPlayer.mSoundMap;
    }

    static /* synthetic */ int access$400(SoundPlayer soundPlayer) {
        return soundPlayer.mSoundIDToPlay;
    }

    static /* synthetic */ int access$402(SoundPlayer soundPlayer, int i) {
        soundPlayer.mSoundIDToPlay = i;
        return i;
    }

    static /* synthetic */ int access$502(SoundPlayer soundPlayer, int i) {
        soundPlayer.mSoundIDPlayed = i;
        return i;
    }

    public SoundPlayer(Context context) {
        int iLoad;
        this.mApplicationContext = context;
        this.mSoundPool.setOnLoadCompleteListener(this.mLoadCompleteListener);
        for (SoundPlayer$Type soundPlayer$Type : SoundPlayer$Type.values()) {
            String strAccess$000 = SoundPlayer$Type.access$000(soundPlayer$Type);
            if (strAccess$000 != null) {
                iLoad = this.mSoundPool.load(strAccess$000, 1);
            } else {
                iLoad = this.mSoundPool.load(this.mApplicationContext, SoundPlayer$Type.access$100(soundPlayer$Type), 1);
            }
            this.mSoundMap.put(soundPlayer$Type, new SoundPlayer$SoundLoad(iLoad, false));
        }
    }

    public synchronized void play(@NonNull SoundPlayer$Type soundPlayer$Type) {
        if (this.mSoundPool == null) {
            return;
        }
        if (this.mSoundMap.get(soundPlayer$Type).soundID == 0) {
            String strAccess$000 = SoundPlayer$Type.access$000(soundPlayer$Type);
            if (strAccess$000 != null) {
                this.mSoundMap.get(soundPlayer$Type).soundID = this.mSoundPool.load(strAccess$000, 1);
            } else {
                this.mSoundMap.get(soundPlayer$Type).soundID = this.mSoundPool.load(this.mApplicationContext, SoundPlayer$Type.access$100(soundPlayer$Type), 1);
            }
            this.mSoundIDToPlay = this.mSoundMap.get(soundPlayer$Type).soundID;
            this.mSoundIDPlayed = 0;
        } else if (!this.mSoundMap.get(soundPlayer$Type).isLoaded) {
            this.mSoundIDToPlay = this.mSoundMap.get(soundPlayer$Type).soundID;
            this.mSoundIDPlayed = 0;
        } else {
            this.mSoundIDPlayed = this.mSoundPool.play(this.mSoundMap.get(soundPlayer$Type).soundID, 1.0f, 1.0f, 0, 0, 1.0f);
        }
    }

    public synchronized void stop() {
        if (this.mSoundPool != null && this.mSoundIDPlayed != 0) {
            this.mSoundPool.stop(this.mSoundIDPlayed);
            this.mSoundIDPlayed = 0;
        }
    }

    public synchronized void release() {
        if (this.mSoundPool != null) {
            this.mSoundMap.clear();
            this.mSoundPool.release();
            this.mSoundPool = null;
        }
    }
}

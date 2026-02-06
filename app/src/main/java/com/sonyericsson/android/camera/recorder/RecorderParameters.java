package com.sonyericsson.android.camera.recorder;

import android.location.Location;
import android.media.CamcorderProfile;
import android.net.Uri;
import com.sonyericsson.android.camera.util.CamLog;

public class RecorderParameters {
    public static final long DEFAULT_MAX_FILE_SIZE = 256000000000L;
    private static final int INVALID_VALUE = -1;
    public static final String TAG = "RecorderParameters";
    private RecorderParameters$DataSpace mDataSpace;
    private boolean mIsHdr;
    private boolean mIsMicrophoneEnabled;
    private Location mLocation;
    private int mMaxDuration;
    private long mMaxFileSize;
    private int mOrientationHint;
    private final CamcorderProfile mProfile;
    private final Uri mUri;

    private boolean isValid(long j) {
        return j != -1;
    }

    /* synthetic */ RecorderParameters(Uri uri, CamcorderProfile camcorderProfile, RecorderParameters$1 recorderParameters$1) {
        this(uri, camcorderProfile);
    }

    static /* synthetic */ Location access$102(RecorderParameters recorderParameters, Location location) {
        recorderParameters.mLocation = location;
        return location;
    }

    static /* synthetic */ int access$202(RecorderParameters recorderParameters, int i) {
        recorderParameters.mOrientationHint = i;
        return i;
    }

    static /* synthetic */ long access$302(RecorderParameters recorderParameters, long j) {
        recorderParameters.mMaxFileSize = j;
        return j;
    }

    static /* synthetic */ int access$402(RecorderParameters recorderParameters, int i) {
        recorderParameters.mMaxDuration = i;
        return i;
    }

    static /* synthetic */ boolean access$502(RecorderParameters recorderParameters, boolean z) {
        recorderParameters.mIsMicrophoneEnabled = z;
        return z;
    }

    static /* synthetic */ RecorderParameters$DataSpace access$602(RecorderParameters recorderParameters, RecorderParameters$DataSpace recorderParameters$DataSpace) {
        recorderParameters.mDataSpace = recorderParameters$DataSpace;
        return recorderParameters$DataSpace;
    }

    static /* synthetic */ boolean access$702(RecorderParameters recorderParameters, boolean z) {
        recorderParameters.mIsHdr = z;
        return z;
    }

    private RecorderParameters(Uri uri, CamcorderProfile camcorderProfile) {
        this.mUri = uri;
        this.mProfile = camcorderProfile;
        this.mLocation = null;
        this.mOrientationHint = -1;
        this.mMaxFileSize = 256000000000L;
        this.mMaxDuration = -1;
        this.mIsMicrophoneEnabled = false;
        this.mIsHdr = false;
        this.mDataSpace = null;
    }

    public boolean hasLocation() {
        return this.mLocation != null;
    }

    public Location location() {
        return this.mLocation;
    }

    public boolean hasOrientationHint() {
        return isValid(this.mOrientationHint);
    }

    public int orientationHint() {
        return this.mOrientationHint;
    }

    public boolean hasMaxFileSize() {
        return isValid(this.mMaxFileSize);
    }

    public long maxFileSize() {
        return this.mMaxFileSize;
    }

    public boolean hasMaxDuration() {
        return isValid(this.mMaxDuration);
    }

    public int maxDuration() {
        return this.mMaxDuration;
    }

    public boolean isHdr() {
        return this.mIsHdr;
    }

    public RecorderParameters$DataSpace dataSpace() {
        return this.mDataSpace;
    }

    public CamcorderProfile profile() {
        return this.mProfile;
    }

    public boolean isMicrophoneEnabled() {
        return this.mIsMicrophoneEnabled;
    }

    public Uri outputUri() {
        return this.mUri;
    }

    public void dump() {
        if (CamLog.DEBUG) {
            CamLog.d(" uri:" + this.mUri);
            CamLog.d(" location:" + this.mLocation);
            CamLog.d(" orientationHint:" + this.mOrientationHint);
            CamLog.d(" maxFileSize:" + this.mMaxFileSize);
            CamLog.d(" maxDuration:" + this.mMaxDuration);
            CamLog.d(" profile:" + this.mProfile);
            CamLog.d(" isMicrophoneEnabled:" + this.mIsMicrophoneEnabled);
            CamLog.d(" isHdr:" + this.mIsHdr);
            CamLog.d(" dataSpace:" + this.mDataSpace);
        }
    }
}

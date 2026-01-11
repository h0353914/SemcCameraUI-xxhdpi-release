.class public Lcom/sonyericsson/android/camera/parameter/dependency/VideoSizeApplier;
.super Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;
.source "VideoSizeApplier.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "VideoSizeApplier"


# instance fields
.field private final mValue:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/sonyericsson/android/camera/parameter/dependency/VideoSizeApplier;->mValue:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    return-void
.end method

.method private apply30Fps(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V
    .locals 1

    .line 202
    iget-object p0, p3, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mVideoHdr:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->reset(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 203
    iget-object p0, p3, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mBacklightCorrection:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->reset(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 205
    iget-object p0, p3, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mVideoStabilizer:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    .line 206
    iget-object v0, p3, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mVideoHdr:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    .line 207
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    .line 206
    invoke-static {p1, p2, v0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->isVideoStabilizerSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 208
    iget-object p1, p3, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mVideoStabilizer:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->reset(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 209
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    if-ne p0, p1, :cond_1

    .line 210
    iget-object p0, p3, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mVideoStabilizer:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->applyRecommendedValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    goto :goto_0

    .line 214
    :cond_0
    iget-object p0, p3, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mVideoStabilizer:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->unavailable(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 217
    :cond_1
    :goto_0
    iget-object p0, p3, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mVideoHdr:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    if-eq p0, p1, :cond_2

    .line 218
    iget-object p0, p3, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mVideoCodec:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->reset(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 219
    iget-object p0, p3, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mVideoShutterTrigger:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->reset(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    goto :goto_1

    .line 221
    :cond_2
    iget-object p0, p3, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mVideoShutterTrigger:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->unavailable(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    :goto_1
    return-void
.end method

.method private apply4k(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V
    .locals 1

    .line 153
    iget-object p0, p3, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mObjectTracking:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/ObjectTracking;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/ObjectTracking;

    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->unavailable(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 154
    iget-object p0, p3, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mVideoShutterTrigger:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;

    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->unavailable(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 155
    iget-object p0, p3, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mVideoHdr:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->reset(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 157
    iget-object p0, p3, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mVideoStabilizer:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    .line 158
    iget-object v0, p3, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mVideoHdr:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    .line 159
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    .line 158
    invoke-static {p1, p2, v0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->isVideoStabilizerSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 160
    iget-object p1, p3, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mVideoStabilizer:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->reset(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 161
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    if-ne p0, p1, :cond_1

    .line 162
    iget-object p0, p3, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mVideoStabilizer:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->applyRecommendedValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    goto :goto_0

    .line 166
    :cond_0
    iget-object p0, p3, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mVideoStabilizer:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->unavailable(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 169
    :cond_1
    :goto_0
    iget-object p0, p3, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mVideoHdr:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    if-eq p0, p1, :cond_2

    .line 170
    iget-object p0, p3, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mVideoCodec:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->reset(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    :cond_2
    return-void
.end method

.method private apply60Fps(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V
    .locals 1

    .line 130
    iget-object p0, p3, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mVideoHdr:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->unavailable(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 131
    iget-object p0, p3, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mBacklightCorrection:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    iget-object v0, p3, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mBacklightCorrection:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/BacklightCorrection;

    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->unavailable(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 133
    iget-object p0, p3, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mVideoStabilizer:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    .line 134
    iget-object v0, p3, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mVideoHdr:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    .line 135
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    .line 134
    invoke-static {p1, p2, v0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->isVideoStabilizerSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 136
    iget-object p1, p3, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mVideoStabilizer:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->reset(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 137
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    if-ne p0, p1, :cond_1

    .line 138
    iget-object p0, p3, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mVideoStabilizer:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->applyRecommendedValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    goto :goto_0

    .line 142
    :cond_0
    iget-object p0, p3, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mVideoStabilizer:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->unavailable(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 145
    :cond_1
    :goto_0
    iget-object p0, p3, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mVideoCodec:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->reset(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 146
    iget-object p0, p3, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mVideoShutterTrigger:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->reset(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 147
    iget-object p0, p3, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mObjectTracking:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->reset(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    return-void
.end method

.method private applyCollections(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V
    .locals 1

    .line 109
    iget-object p0, p3, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mVideoHdr:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->unavailable(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 111
    iget-object p0, p3, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mVideoStabilizer:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    .line 112
    iget-object v0, p3, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mVideoHdr:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    .line 113
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    .line 112
    invoke-static {p1, p2, v0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->isVideoStabilizerSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 114
    iget-object p1, p3, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mVideoStabilizer:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->reset(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 115
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    if-ne p0, p1, :cond_1

    .line 116
    iget-object p0, p3, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mVideoStabilizer:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->applyRecommendedValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    goto :goto_0

    .line 120
    :cond_0
    iget-object p0, p3, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mVideoStabilizer:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->unavailable(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 123
    :cond_1
    :goto_0
    iget-object p0, p3, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mVideoCodec:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->reset(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 124
    iget-object p0, p3, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mVideoShutterTrigger:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->reset(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 125
    iget-object p0, p3, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mObjectTracking:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->reset(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    return-void
.end method

.method private applyOther(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V
    .locals 2

    .line 176
    iget-object v0, p3, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mVideoHdr:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->unavailable(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 178
    iget-object v0, p3, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mVideoStabilizer:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    .line 179
    iget-object v1, p3, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mVideoHdr:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    .line 180
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    .line 179
    invoke-static {p1, p2, v1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->isVideoStabilizerSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 181
    iget-object p1, p3, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mVideoStabilizer:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->reset(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 182
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    if-ne v0, p1, :cond_1

    .line 183
    iget-object p1, p3, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mVideoStabilizer:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    invoke-static {p1, p2}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->applyRecommendedValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    goto :goto_0

    .line 187
    :cond_0
    iget-object p1, p3, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mVideoStabilizer:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    invoke-static {p1, p2}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->unavailable(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 189
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/parameter/dependency/VideoSizeApplier;->mValue:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->HD:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    if-ne p0, p1, :cond_2

    .line 190
    iget-object p0, p3, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mVideoHdr:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->reset(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    goto :goto_1

    .line 192
    :cond_2
    iget-object p0, p3, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mVideoHdr:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->unavailable(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 194
    :goto_1
    iget-object p0, p3, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mBacklightCorrection:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->reset(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 195
    iget-object p0, p3, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mVideoCodec:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->reset(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 196
    iget-object p0, p3, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mVideoShutterTrigger:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->reset(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 197
    iget-object p0, p3, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mObjectTracking:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->reset(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    return-void
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V
    .locals 4

    .line 48
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->getActionMode()Lcom/sonyericsson/android/camera/ActionMode;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/ActionMode;->mCameraId:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    .line 49
    iget-object v1, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mVideoSize:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 51
    sget-object v2, Lcom/sonyericsson/android/camera/parameter/dependency/VideoSizeApplier$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$VideoSize:[I

    iget-object v3, p0, Lcom/sonyericsson/android/camera/parameter/dependency/VideoSizeApplier;->mValue:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 74
    invoke-direct {p0, v0, v1, p1}, Lcom/sonyericsson/android/camera/parameter/dependency/VideoSizeApplier;->applyOther(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V

    goto :goto_0

    .line 71
    :pswitch_0
    invoke-direct {p0, v0, v1, p1}, Lcom/sonyericsson/android/camera/parameter/dependency/VideoSizeApplier;->apply30Fps(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V

    goto :goto_0

    .line 65
    :pswitch_1
    invoke-direct {p0, v0, v1, p1}, Lcom/sonyericsson/android/camera/parameter/dependency/VideoSizeApplier;->apply4k(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V

    goto :goto_0

    .line 57
    :pswitch_2
    invoke-direct {p0, v0, v1, p1}, Lcom/sonyericsson/android/camera/parameter/dependency/VideoSizeApplier;->apply60Fps(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V

    goto :goto_0

    .line 54
    :pswitch_3
    invoke-direct {p0, v0, v1, p1}, Lcom/sonyericsson/android/camera/parameter/dependency/VideoSizeApplier;->applyCollections(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V

    .line 78
    :goto_0
    iget-object p0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mFusionMode:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->getSelectability()Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;

    move-result-object p0

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;->FIXED:Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;

    if-eq p0, v2, :cond_2

    .line 80
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isFusionSupportedWith(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)Z

    move-result p0

    if-eqz p0, :cond_1

    iget-object p0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mVideoHdr:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    .line 81
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    if-ne p0, v0, :cond_0

    goto :goto_1

    .line 84
    :cond_0
    iget-object p0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mFusionMode:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->reset(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    goto :goto_2

    .line 82
    :cond_1
    :goto_1
    iget-object p0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mFusionMode:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    iget-object v0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mFusionMode:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;

    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->unavailable(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 86
    :goto_2
    iget-object p0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mFusionMode:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;->create(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 88
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;->apply(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public reset(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V
    .locals 1

    .line 101
    iget-object p0, p0, Lcom/sonyericsson/android/camera/parameter/dependency/VideoSizeApplier;->mValue:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->is4KVideo()Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mVideoHdr:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    if-eq p0, v0, :cond_0

    .line 102
    iget-object p0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mObjectTracking:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->reset(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 103
    iget-object p0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mVideoShutterTrigger:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->reset(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    :cond_0
    return-void
.end method

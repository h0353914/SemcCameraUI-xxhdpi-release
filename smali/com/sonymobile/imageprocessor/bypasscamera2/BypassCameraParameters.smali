.class public final Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;
.super Ljava/lang/Object;
.source "BypassCameraParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability;
    }
.end annotation


# static fields
.field public static final BURST_OFF:Ljava/lang/String; = "off"

.field public static final BURST_ON:Ljava/lang/String; = "on"

.field public static final CLIMAX_RECOGNITION_AUTO:Ljava/lang/String; = "auto"

.field public static final CLIMAX_RECOGNITION_OFF:Ljava/lang/String; = "off"

.field public static final CLIMAX_RECOGNITION_ON:Ljava/lang/String; = "on"

.field public static final KEY_BURST_VALUES:Ljava/lang/String; = "burst-values"

.field public static final KEY_CLIMAX_RECOGNITION:Ljava/lang/String; = "climax-recognition"

.field public static final KEY_CLIMAX_RECOGNITION_VALUES:Ljava/lang/String; = "climax-recognition-values"

.field public static final KEY_SUPER_SLOW_VALUES:Ljava/lang/String; = "super-slow-values"

.field public static final KEY_VIDEO_HDR_VALUES:Ljava/lang/String; = "video-hdr-values"

.field public static final KEY_VIDEO_HIGH_FRAME_RATE_CONFIGURATION:Ljava/lang/String; = "video-high-frame-rate-configuration"

.field public static final KEY_VIDEO_STABILIZERS_INTELLIGENT_ACTIVE_CONFIGURATION:Ljava/lang/String; = "vs-intelligent-active-configuration"

.field public static final KEY_VIDEO_STABILIZERS_STEADY_SHOT_CONFIGURATION:Ljava/lang/String; = "vs-steady-shot-configuration"

.field public static final KEY_VIDEO_STABILIZERS_VALUES:Ljava/lang/String; = "vs-values"

.field public static final KEY_VIDEO_SUPER_SLOW_CONFIGURATION:Ljava/lang/String; = "video-super-slow-configuration"

.field public static final SUPER_SLOW_OFF:Ljava/lang/String; = "off"

.field public static final SUPER_SLOW_ON:Ljava/lang/String; = "on"

.field public static final VIDEO_HDR_OFF:Ljava/lang/String; = "off"

.field public static final VIDEO_HDR_ON:Ljava/lang/String; = "on"


# instance fields
.field private final mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;->mMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;->mMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;->mMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;->mMap:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setInt(Ljava/lang/String;I)V
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;->mMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.class public Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$RecordingParameters;
.super Ljava/lang/Object;
.source "BypassCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecordingParameters"
.end annotation


# instance fields
.field public final dataSpace:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$DataSpace;


# direct methods
.method public constructor <init>(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$DataSpace;)V
    .locals 0

    .line 891
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 892
    iput-object p1, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$RecordingParameters;->dataSpace:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$DataSpace;

    return-void
.end method

.class public Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;
.super Ljava/lang/Object;
.source "AnimationRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;,
        Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;
    }
.end annotation


# instance fields
.field public final mDegree:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

.field public final mFrom:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

.field public final mTarget:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

.field public final mType:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;->mType:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

    .line 49
    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;->mDegree:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    .line 50
    iput-object p3, p0, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;->mFrom:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 51
    iput-object p4, p0, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;->mTarget:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    return-void
.end method

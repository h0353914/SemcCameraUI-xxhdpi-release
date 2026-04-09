.class public Lcom/sonyericsson/android/camera/ShutterToneGenerator;
.super Ljava/lang/Object;
.source "ShutterToneGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;
    }
.end annotation


# static fields
.field private static final SOUND_HOME:Ljava/lang/String; = "/system/media/audio/camera/"

.field public static final TAG:Ljava/lang/String; = "ShutterToneGenerator"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSoundFilePath(Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;)Ljava/lang/String;
    .locals 2

    .line 63
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 64
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;->getBooleanValue()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "/system/media/audio/camera/"

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 66
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;->isCommonSound()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;->getFileName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;->getDirectoryName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;->getFileName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    const-string p0, "off"

    .line 74
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

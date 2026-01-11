.class public interface abstract Lcom/sonymobile/android/media/internal/ClockInterface;
.super Ljava/lang/Object;
.source "ClockInterface.java"


# virtual methods
.method public abstract getCurrentTimeUs()J
.end method

.method public abstract getDurationAtPauseUs()J
.end method

.method public abstract getDurationAtStopUs()J
.end method

.method public abstract getRecordedDurationUs()J
.end method

.method public abstract getStartTimeUs()J
.end method

.method public abstract getStopTimeUs()J
.end method

.method public abstract getSystemTimeUs()J
.end method

.method public abstract getTotalPausedDurationUs()J
.end method

.method public abstract isPausedAt(J)Z
.end method

.method public abstract isStarted()Z
.end method

.method public abstract pauseClock()V
.end method

.method public abstract resetClock()V
.end method

.method public abstract resumeClock()V
.end method

.method public abstract setStartTime()V
.end method

.method public abstract stopClock()V
.end method

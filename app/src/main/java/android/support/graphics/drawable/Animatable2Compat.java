package android.support.graphics.drawable;

import android.graphics.drawable.Animatable;
import android.support.annotation.NonNull;

public interface Animatable2Compat extends Animatable {
    void clearAnimationCallbacks();

    void registerAnimationCallback(@NonNull Animatable2Compat$AnimationCallback animatable2Compat$AnimationCallback);

    boolean unregisterAnimationCallback(@NonNull Animatable2Compat$AnimationCallback animatable2Compat$AnimationCallback);
}

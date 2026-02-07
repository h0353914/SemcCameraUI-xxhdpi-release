package android.support.v4.app;

import android.app.ActivityOptions;
import android.app.PendingIntent;
import android.graphics.Rect;
import android.os.Build$VERSION;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;

/* JADX INFO: loaded from: classes.dex */
@RequiresApi(16)
class ActivityOptionsCompat$ActivityOptionsCompatImpl extends ActivityOptionsCompat {
    private final ActivityOptions mActivityOptions;

    ActivityOptionsCompat$ActivityOptionsCompatImpl(ActivityOptions activityOptions) {
        this.mActivityOptions = activityOptions;
    }

    @Override // android.support.v4.app.ActivityOptionsCompat
    public Bundle toBundle() {
        return this.mActivityOptions.toBundle();
    }

    @Override // android.support.v4.app.ActivityOptionsCompat
    public void update(ActivityOptionsCompat activityOptionsCompat) {
        if (activityOptionsCompat instanceof ActivityOptionsCompat$ActivityOptionsCompatImpl) {
            this.mActivityOptions.update(((ActivityOptionsCompat$ActivityOptionsCompatImpl) activityOptionsCompat).mActivityOptions);
        }
    }

    @Override // android.support.v4.app.ActivityOptionsCompat
    public void requestUsageTimeReport(PendingIntent pendingIntent) {
        if (Build$VERSION.SDK_INT >= 23) {
            this.mActivityOptions.requestUsageTimeReport(pendingIntent);
        }
    }

    @Override // android.support.v4.app.ActivityOptionsCompat
    public ActivityOptionsCompat setLaunchBounds(@Nullable Rect rect) {
        return Build$VERSION.SDK_INT < 24 ? this : new ActivityOptionsCompat$ActivityOptionsCompatImpl(this.mActivityOptions.setLaunchBounds(rect));
    }

    @Override // android.support.v4.app.ActivityOptionsCompat
    public Rect getLaunchBounds() {
        if (Build$VERSION.SDK_INT < 24) {
            return null;
        }
        return this.mActivityOptions.getLaunchBounds();
    }
}

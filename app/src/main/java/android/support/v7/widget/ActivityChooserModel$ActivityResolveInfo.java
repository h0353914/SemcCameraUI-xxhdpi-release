package android.support.v7.widget;

import android.content.pm.ResolveInfo;
import java.math.BigDecimal;

public final class ActivityChooserModel$ActivityResolveInfo implements Comparable<ActivityChooserModel$ActivityResolveInfo> {
    public final ResolveInfo resolveInfo;
    public float weight;

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(ActivityChooserModel$ActivityResolveInfo activityChooserModel$ActivityResolveInfo) {
        return compareTo2(activityChooserModel$ActivityResolveInfo);
    }

    public ActivityChooserModel$ActivityResolveInfo(ResolveInfo resolveInfo) {
        this.resolveInfo = resolveInfo;
    }

    public int hashCode() {
        return 31 + Float.floatToIntBits(this.weight);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && Float.floatToIntBits(this.weight) == Float.floatToIntBits(((ActivityChooserModel$ActivityResolveInfo) obj).weight);
    }

    /* JADX INFO: renamed from: compareTo, reason: avoid collision after fix types in other method */
    public int compareTo2(ActivityChooserModel$ActivityResolveInfo activityChooserModel$ActivityResolveInfo) {
        return Float.floatToIntBits(activityChooserModel$ActivityResolveInfo.weight) - Float.floatToIntBits(this.weight);
    }

    public String toString() {
        return "[resolveInfo:" + this.resolveInfo.toString() + "; weight:" + new BigDecimal(this.weight) + "]";
    }
}

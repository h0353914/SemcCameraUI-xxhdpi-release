package android.support.v7.widget;

import android.content.ComponentName;
import java.math.BigDecimal;

public final class ActivityChooserModel$HistoricalRecord {
    public final ComponentName activity;
    public final long time;
    public final float weight;

    public ActivityChooserModel$HistoricalRecord(String str, long j, float f) {
        this(ComponentName.unflattenFromString(str), j, f);
    }

    public ActivityChooserModel$HistoricalRecord(ComponentName componentName, long j, float f) {
        this.activity = componentName;
        this.time = j;
        this.weight = f;
    }

    public int hashCode() {
        return (31 * ((((this.activity == null ? 0 : this.activity.hashCode()) + 31) * 31) + ((int) (this.time ^ (this.time >>> 32))))) + Float.floatToIntBits(this.weight);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ActivityChooserModel$HistoricalRecord activityChooserModel$HistoricalRecord = (ActivityChooserModel$HistoricalRecord) obj;
        if (this.activity == null) {
            if (activityChooserModel$HistoricalRecord.activity != null) {
                return false;
            }
        } else if (!this.activity.equals(activityChooserModel$HistoricalRecord.activity)) {
            return false;
        }
        return this.time == activityChooserModel$HistoricalRecord.time && Float.floatToIntBits(this.weight) == Float.floatToIntBits(activityChooserModel$HistoricalRecord.weight);
    }

    public String toString() {
        return "[; activity:" + this.activity + "; time:" + this.time + "; weight:" + new BigDecimal(this.weight) + "]";
    }
}

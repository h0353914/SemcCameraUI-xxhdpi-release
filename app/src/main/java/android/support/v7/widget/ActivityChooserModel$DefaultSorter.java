package android.support.v7.widget;

import android.content.ComponentName;
import android.content.Intent;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

final class ActivityChooserModel$DefaultSorter implements ActivityChooserModel$ActivitySorter {
    private static final float WEIGHT_DECAY_COEFFICIENT = 0.95f;
    private final Map<ComponentName, ActivityChooserModel$ActivityResolveInfo> mPackageNameToActivityMap = new HashMap();

    ActivityChooserModel$DefaultSorter() {
    }

    @Override // android.support.v7.widget.ActivityChooserModel$ActivitySorter
    public void sort(Intent intent, List<ActivityChooserModel$ActivityResolveInfo> list, List<ActivityChooserModel$HistoricalRecord> list2) {
        Map<ComponentName, ActivityChooserModel$ActivityResolveInfo> map = this.mPackageNameToActivityMap;
        map.clear();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            ActivityChooserModel$ActivityResolveInfo activityChooserModel$ActivityResolveInfo = list.get(i);
            activityChooserModel$ActivityResolveInfo.weight = 0.0f;
            map.put(new ComponentName(activityChooserModel$ActivityResolveInfo.resolveInfo.activityInfo.packageName, activityChooserModel$ActivityResolveInfo.resolveInfo.activityInfo.name), activityChooserModel$ActivityResolveInfo);
        }
        float f = 1.0f;
        for (int size2 = list2.size() - 1; size2 >= 0; size2--) {
            ActivityChooserModel$HistoricalRecord activityChooserModel$HistoricalRecord = list2.get(size2);
            ActivityChooserModel$ActivityResolveInfo activityChooserModel$ActivityResolveInfo2 = map.get(activityChooserModel$HistoricalRecord.activity);
            if (activityChooserModel$ActivityResolveInfo2 != null) {
                activityChooserModel$ActivityResolveInfo2.weight += activityChooserModel$HistoricalRecord.weight * f;
                f *= 0.95f;
            }
        }
        Collections.sort(list);
    }
}

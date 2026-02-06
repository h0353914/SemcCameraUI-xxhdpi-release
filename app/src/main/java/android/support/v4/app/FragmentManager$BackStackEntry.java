package android.support.v4.app;

import android.support.annotation.Nullable;
import android.support.annotation.StringRes;

public interface FragmentManager$BackStackEntry {
    @Nullable
    CharSequence getBreadCrumbShortTitle();

    @StringRes
    int getBreadCrumbShortTitleRes();

    @Nullable
    CharSequence getBreadCrumbTitle();

    @StringRes
    int getBreadCrumbTitleRes();

    int getId();

    @Nullable
    String getName();
}

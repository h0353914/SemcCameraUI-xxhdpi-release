package android.support.v4.view;

import android.support.annotation.Px;

public interface ViewPager$OnPageChangeListener {
    void onPageScrollStateChanged(int i);

    void onPageScrolled(int i, float f, @Px int i2);

    void onPageSelected(int i);
}

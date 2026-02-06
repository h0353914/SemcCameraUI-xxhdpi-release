package com.sonyericsson.cameracommon.viewfinder.indicators;

import android.graphics.drawable.AnimationDrawable;
import android.widget.ImageView;
import com.sonyericsson.cameracommon.utility.BrandConfig;

public class GeotagIndicator extends Indicator {
    public GeotagIndicator(ImageView imageView) {
        super(imageView);
    }

    public void isAcquired(boolean z) {
        if (z) {
            this.mView.setImageResource(getAcquiredGpsIcon());
        } else {
            this.mView.setImageResource(getAcquiringGpsResource());
            ((AnimationDrawable) this.mView.getDrawable()).start();
        }
    }

    public void release() {
        if (this.mView.getDrawable() instanceof AnimationDrawable) {
            ((AnimationDrawable) this.mView.getDrawable()).stop();
        }
    }

    private int getAcquiringGpsResource() {
        return BrandConfig.isVerizonBrand() ? 2131230849 : 2131230848;
    }

    private int getAcquiredGpsIcon() {
        return BrandConfig.isVerizonBrand() ? 2131230842 : 2131230841;
    }
}

package com.sonyericsson.android.camera.view.tutorial;

import android.support.v4.view.ViewPager$OnPageChangeListener;
import android.widget.ImageView;
import com.sonyericsson.android.camera.research.LocalResearchUtil;
import com.sonymobile.cameracommon.research.parameters.Event$WizardResult;
import java.util.Iterator;

class PagingTutorialContentView$1 implements ViewPager$OnPageChangeListener {
    final /* synthetic */ PagingTutorialContentView this$0;

    PagingTutorialContentView$1(PagingTutorialContentView pagingTutorialContentView) {
        this.this$0 = pagingTutorialContentView;
    }

    @Override // android.support.v4.view.ViewPager$OnPageChangeListener
    public void onPageScrolled(int i, float f, int i2) {
        PagingTutorialContentView$PagingTutorialContent pagingTutorialContentView$PagingTutorialContentAccess$000 = PagingTutorialContentView.access$000(this.this$0);
        if (pagingTutorialContentView$PagingTutorialContentAccess$000.mMediaContentsResourceId != null) {
            PagingTutorialContentView$MediaContentsResource pagingTutorialContentView$MediaContentsResource = pagingTutorialContentView$PagingTutorialContentAccess$000.mMediaContentsResourceId.get(i);
            if (PagingTutorialContentView.access$100(this.this$0) == null) {
                Iterator<PagingTutorialContentView$MediaContentsResource> it = pagingTutorialContentView$PagingTutorialContentAccess$000.mMediaContentsResourceId.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    } else if (it.next().getType() == PagingTutorialContentView$MediaContentsResourceType.IMAGE) {
                        PagingTutorialContentView.access$102(this.this$0, (ImageView) this.this$0.findViewById(2131296678));
                        break;
                    }
                }
                if (pagingTutorialContentView$MediaContentsResource.getType() == PagingTutorialContentView$MediaContentsResourceType.IMAGE) {
                    PagingTutorialContentView.access$100(this.this$0).setVisibility(0);
                    PagingTutorialContentView.access$100(this.this$0).setImageResource(pagingTutorialContentView$MediaContentsResource.getId());
                }
            }
            if (PagingTutorialContentView.access$200(this.this$0) == null) {
                Iterator<PagingTutorialContentView$MediaContentsResource> it2 = pagingTutorialContentView$PagingTutorialContentAccess$000.mMediaContentsResourceId.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        break;
                    }
                    if (it2.next().getType() == PagingTutorialContentView$MediaContentsResourceType.VIDEO) {
                        PagingTutorialContentView.access$202(this.this$0, (TutorialVideoView) this.this$0.findViewById(2131296680));
                        PagingTutorialContentView.access$300(this.this$0, PagingTutorialContentView.access$200(this.this$0));
                        break;
                    }
                }
                if (pagingTutorialContentView$MediaContentsResource.getType() == PagingTutorialContentView$MediaContentsResourceType.VIDEO) {
                    PagingTutorialContentView.access$200(this.this$0).setSurfaceTextureListener(PagingTutorialContentView.access$400(this.this$0, i));
                    PagingTutorialContentView.access$200(this.this$0).setVisibility(0);
                }
            }
        }
    }

    @Override // android.support.v4.view.ViewPager$OnPageChangeListener
    public void onPageSelected(int i) {
        PagingTutorialContentView$PagingTutorialContent pagingTutorialContentView$PagingTutorialContentAccess$000 = PagingTutorialContentView.access$000(this.this$0);
        int i2 = pagingTutorialContentView$PagingTutorialContentAccess$000.mPageIndex;
        pagingTutorialContentView$PagingTutorialContentAccess$000.mPageIndex = i;
        if (pagingTutorialContentView$PagingTutorialContentAccess$000.mMediaContentsResourceId != null) {
            PagingTutorialContentView$MediaContentsResource pagingTutorialContentView$MediaContentsResource = pagingTutorialContentView$PagingTutorialContentAccess$000.mMediaContentsResourceId.get(i);
            if (PagingTutorialContentView.access$100(this.this$0) != null && pagingTutorialContentView$MediaContentsResource.getType() == PagingTutorialContentView$MediaContentsResourceType.IMAGE) {
                PagingTutorialContentView.access$100(this.this$0).setImageResource(pagingTutorialContentView$MediaContentsResource.getId());
                if (PagingTutorialContentView.access$200(this.this$0) != null) {
                    PagingTutorialContentView.access$200(this.this$0).setVisibility(8);
                    PagingTutorialContentView.access$500(this.this$0);
                }
                PagingTutorialContentView.access$100(this.this$0).setVisibility(0);
            } else if (PagingTutorialContentView.access$200(this.this$0) != null && pagingTutorialContentView$MediaContentsResource.getType() == PagingTutorialContentView$MediaContentsResourceType.VIDEO) {
                if (PagingTutorialContentView.access$600(this.this$0) != null) {
                    PagingTutorialContentView.access$700(this.this$0, i);
                } else {
                    PagingTutorialContentView.access$200(this.this$0).setSurfaceTextureListener(PagingTutorialContentView.access$400(this.this$0, i));
                }
                if (PagingTutorialContentView.access$100(this.this$0) != null) {
                    PagingTutorialContentView.access$100(this.this$0).setVisibility(8);
                }
                PagingTutorialContentView.access$200(this.this$0).setVisibility(0);
            }
        }
        TutorialContentView$TutorialPageInfo currentTutorialPageInfo = pagingTutorialContentView$PagingTutorialContentAccess$000.getCurrentTutorialPageInfo(i2);
        if (i2 < pagingTutorialContentView$PagingTutorialContentAccess$000.mPageIndex) {
            LocalResearchUtil.getInstance().sendSetupWizardEvent(currentTutorialPageInfo.type, currentTutorialPageInfo.pageIndexByType, Event$WizardResult.NEXT);
        } else {
            LocalResearchUtil.getInstance().sendSetupWizardEvent(currentTutorialPageInfo.type, currentTutorialPageInfo.pageIndexByType, Event$WizardResult.PREVIOUS);
        }
        TutorialContentView$TutorialPageInfo currentTutorialPageInfo2 = pagingTutorialContentView$PagingTutorialContentAccess$000.getCurrentTutorialPageInfo(i);
        LocalResearchUtil.getInstance().startSetupWizard(currentTutorialPageInfo2.type, currentTutorialPageInfo2.pageIndexByType);
    }

    @Override // android.support.v4.view.ViewPager$OnPageChangeListener
    public void onPageScrollStateChanged(int i) {
        switch (i) {
            case 0:
                PagingTutorialContentView.access$800(this.this$0);
                break;
            case 1:
                PagingTutorialContentView.access$900(this.this$0);
                break;
        }
    }
}

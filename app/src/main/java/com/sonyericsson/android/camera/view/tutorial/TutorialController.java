package com.sonyericsson.android.camera.view.tutorial;

import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.content.Context;
import android.os.Handler;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.view.Window;
import android.view.animation.AnimationUtils;
import android.view.animation.PathInterpolator;
import android.widget.FrameLayout$LayoutParams;
import android.widget.ImageView;
import android.widget.ViewFlipper;
import com.sonyericsson.android.camera.research.LocalResearchUtil;
import com.sonyericsson.android.camera.setting.StoredSettings;
import com.sonyericsson.android.camera.util.CamLog;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class TutorialController {
    private static final long FADE_OUT_ANIMATION_DURATION_MILLIS = 300;
    private static final long SLIDE_IN_ANIMATION_DURATION_LAND_MILLIS = 700;
    private static final long SLIDE_IN_ANIMATION_DURATION_PORT_MILLIS = 1000;
    private static final String TAG = "TutorialController";
    private static final boolean TRACE = true;
    private ObjectAnimator mAnimator;
    private TutorialController$OnClickSetupWizardButtonListener mButtonListener;
    private TutorialContainerView mContainer;
    private final Context mContext;
    private TutorialController$TutorialType mCurrentType;
    private Runnable mPostStartAnimationTask;
    private TutorialController$TutorialType mPreviousType;
    private final ViewGroup mRootView;
    private TutorialController$SystemUiAccessor mSystemUiAccessor;
    private ViewFlipper mViewFlipper;
    private Window mWindow;
    private boolean mIsOpened = false;
    private int mOrientation = 0;
    private final TutorialFactory mTutorialFactory = new TutorialFactory();
    private final Handler mHandler = new Handler();

    static /* synthetic */ void access$000(TutorialController tutorialController) {
        tutorialController.startSlideInAnimation();
    }

    static /* synthetic */ TutorialContainerView access$100(TutorialController tutorialController) {
        return tutorialController.mContainer;
    }

    static /* synthetic */ void access$200(TutorialController tutorialController, boolean z) {
        tutorialController.setNavigationBarThemeLight(z);
    }

    static /* synthetic */ void access$300(String str) {
        trace(str);
    }

    static /* synthetic */ void access$400(TutorialController tutorialController) {
        tutorialController.updateUiOrientation();
    }

    static /* synthetic */ void access$500(TutorialController tutorialController) {
        tutorialController.release();
    }

    static /* synthetic */ void access$600(TutorialController tutorialController) {
        tutorialController.hide();
    }

    static /* synthetic */ TutorialController$OnClickSetupWizardButtonListener access$700(TutorialController tutorialController) {
        return tutorialController.mButtonListener;
    }

    private static void trace(String str) {
        CamLog.d(str);
    }

    public TutorialController(ViewGroup viewGroup, Window window) {
        this.mRootView = viewGroup;
        this.mContext = viewGroup.getContext();
        this.mWindow = window;
        prepareTutorial();
    }

    private void prepareTutorial() {
        this.mContainer = (TutorialContainerView) ((ViewStub) this.mRootView.findViewById(2131296674)).inflate().findViewById(2131296675);
        this.mViewFlipper = this.mContainer.getViewFlipper();
        if (this.mViewFlipper == null) {
            this.mViewFlipper = (ViewFlipper) this.mContainer.findViewById(2131296403);
        }
        updateFlipperAnimation();
    }

    public boolean open(TutorialController$OpenType tutorialController$OpenType, StoredSettings storedSettings, TutorialContentView$OnClickCloseButtonListener tutorialContentView$OnClickCloseButtonListener) {
        if (isOpened()) {
            trace("open()  :  is already accepted.In the middle of starting to open tutorial...");
            return false;
        }
        if (!setContentToView(tutorialController$OpenType, storedSettings, tutorialContentView$OnClickCloseButtonListener)) {
            return false;
        }
        if (getTutorialCount() != 0) {
            trace("open()  :  is requested.");
            this.mIsOpened = true;
            LocalResearchUtil.getInstance().initSetupwizard(tutorialController$OpenType.isReadMore);
            LocalResearchUtil.getInstance().startSetupWizard(this.mCurrentType, 0);
            this.mPostStartAnimationTask = new TutorialController$1(this);
            this.mHandler.post(this.mPostStartAnimationTask);
        }
        return true;
    }

    private boolean setContentToView(TutorialController$OpenType tutorialController$OpenType, StoredSettings storedSettings, TutorialContentView$OnClickCloseButtonListener tutorialContentView$OnClickCloseButtonListener) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        ArrayList arrayList5 = new ArrayList();
        ArrayList arrayList6 = new ArrayList();
        for (TutorialController$TutorialType tutorialController$TutorialType : tutorialController$OpenType.tutorialTypes) {
            TutorialContentView$TutorialContent tutorialContentView$TutorialContentCreate = this.mTutorialFactory.create(tutorialController$TutorialType, this.mOrientation);
            if (tutorialContentView$TutorialContentCreate.isSimpleTutorialContent()) {
                arrayList5.add(tutorialController$TutorialType);
                arrayList6.add(tutorialContentView$TutorialContentCreate);
            } else if (tutorialController$OpenType.isReadMore || tutorialContentView$TutorialContentCreate.canShowContent(storedSettings)) {
                if (((PagingTutorialContentView$PagingTutorialContent) tutorialContentView$TutorialContentCreate).getNavigatorType() == PagingTutorialContentView$TutorialNavigatorType.NORMAL) {
                    arrayList.add(tutorialController$TutorialType);
                    arrayList2.add(tutorialContentView$TutorialContentCreate);
                } else {
                    arrayList3.add(tutorialController$TutorialType);
                    arrayList4.add(tutorialContentView$TutorialContentCreate);
                }
            }
        }
        if (arrayList5.size() == 0 && arrayList.size() == 0 && arrayList3.size() == 0) {
            return false;
        }
        for (int i = 0; i < arrayList5.size(); i++) {
            addContent((TutorialContentView$TutorialContent) arrayList6.get(i), new TutorialController$OnClickCloseButtonListenerImpl(this, (TutorialContentView$TutorialContent) arrayList6.get(i)));
        }
        if (arrayList.size() > 0) {
            TutorialContentView$TutorialContent tutorialContentView$TutorialContentCreate2 = this.mTutorialFactory.create(this.mOrientation, arrayList, arrayList2);
            addContent(tutorialContentView$TutorialContentCreate2, tutorialContentView$OnClickCloseButtonListener == null ? new TutorialController$OnClickCloseButtonListenerImpl(this, tutorialContentView$TutorialContentCreate2) : tutorialContentView$OnClickCloseButtonListener);
        }
        if (arrayList3.size() > 0) {
            TutorialContentView$TutorialContent tutorialContentView$TutorialContentCreate3 = this.mTutorialFactory.create(this.mOrientation, arrayList3, arrayList4);
            if (tutorialContentView$OnClickCloseButtonListener == null) {
                tutorialContentView$OnClickCloseButtonListener = new TutorialController$OnClickCloseButtonListenerImpl(this, tutorialContentView$TutorialContentCreate3);
            }
            addContent(tutorialContentView$TutorialContentCreate3, tutorialContentView$OnClickCloseButtonListener);
        }
        if (arrayList5.size() > 0) {
            this.mCurrentType = (TutorialController$TutorialType) arrayList5.get(0);
            return true;
        }
        if (arrayList.size() > 0) {
            this.mCurrentType = (TutorialController$TutorialType) arrayList.get(0);
            return true;
        }
        if (arrayList3.size() <= 0) {
            return true;
        }
        this.mCurrentType = (TutorialController$TutorialType) arrayList3.get(0);
        return true;
    }

    private void addContent(TutorialContentView$TutorialContent tutorialContentView$TutorialContent, TutorialContentView$OnClickCloseButtonListener tutorialContentView$OnClickCloseButtonListener) {
        TutorialContainerView$TutorialView tutorialContainerView$TutorialView = new TutorialContainerView$TutorialView(this.mContext);
        FrameLayout$LayoutParams frameLayout$LayoutParams = new FrameLayout$LayoutParams(-1, -1);
        frameLayout$LayoutParams.gravity = 3;
        tutorialContainerView$TutorialView.setLayoutParams(frameLayout$LayoutParams);
        this.mViewFlipper.addView(tutorialContainerView$TutorialView);
        tutorialContainerView$TutorialView.setContent(tutorialContentView$TutorialContent);
        tutorialContainerView$TutorialView.setOnClickCloseButtonListener(tutorialContentView$OnClickCloseButtonListener);
    }

    private void startSlideInAnimation() {
        show();
        this.mAnimator = getSlideInAnimator(isPortrait() ? 1000L : 700L);
        this.mAnimator.start();
    }

    public void pause() {
        trace("pause()");
        if (getTutorialCount() != 0) {
            release();
            hide();
        }
    }

    public void close() {
        trace("close()");
        if (getTutorialCount() != 0) {
            getFadeOutAnimator(300L).start();
        }
        this.mIsOpened = false;
    }

    private void release() {
        trace("release()");
        for (int i = 0; i < getTutorialCount(); i++) {
            ((TutorialContainerView$TutorialView) this.mViewFlipper.getChildAt(i)).release();
        }
        setNavigationBarThemeLight(false);
        this.mViewFlipper.removeAllViews();
        this.mHandler.removeCallbacks(this.mPostStartAnimationTask);
        this.mPostStartAnimationTask = null;
        this.mPreviousType = null;
        this.mCurrentType = null;
        this.mIsOpened = false;
    }

    private boolean isPortrait() {
        return this.mOrientation == 1;
    }

    private void show() {
        trace("show()");
        this.mContainer.setVisibility(0);
    }

    private void hide() {
        trace("hide()");
        this.mContainer.setVisibility(4);
    }

    public boolean isOpened() {
        return this.mIsOpened;
    }

    public void setUiOrientation(int i) {
        trace("setUiOrientation() E orientation = " + i);
        if (this.mOrientation != i) {
            this.mOrientation = i;
            if (this.mAnimator != null && this.mAnimator.isRunning()) {
                trace("setUiOrientation() X : Tutorial open animation is running.");
                return;
            }
            updateUiOrientation();
        }
        trace("setUiOrientation() X");
    }

    private void updateUiOrientation() {
        trace("updateUiOrientation() E orientation = " + this.mOrientation);
        if (this.mViewFlipper != null) {
            for (int i = 0; i < getTutorialCount(); i++) {
                ((TutorialContainerView$TutorialView) this.mViewFlipper.getChildAt(i)).setUiOrientation(this.mOrientation);
            }
        }
        updateFlipperAnimation();
        trace("updateUiOrientation() X");
    }

    private int getTutorialCount() {
        if (this.mViewFlipper == null) {
            return 0;
        }
        return this.mViewFlipper.getChildCount();
    }

    public void doNextAction(TutorialController$TutorialType tutorialController$TutorialType) {
        trace("doNextAction()");
        if (canHandleNextAction(tutorialController$TutorialType)) {
            this.mPreviousType = tutorialController$TutorialType;
            this.mCurrentType = getNextTutorialType(this.mPreviousType);
            if (hasNext(tutorialController$TutorialType)) {
                LocalResearchUtil.getInstance().startSetupWizard(this.mCurrentType, 0);
                this.mViewFlipper.showNext();
            } else {
                close();
            }
        }
    }

    public TutorialController$TutorialType getCurrentType() {
        return this.mCurrentType;
    }

    public List<TutorialController$TutorialType> getTutorialTypes() {
        return ((TutorialContainerView$TutorialView) this.mViewFlipper.getCurrentView()).getContent().getTutorialTypes();
    }

    private TutorialController$TutorialType getNextTutorialType(TutorialController$TutorialType tutorialController$TutorialType) {
        if (this.mViewFlipper != null && getTutorialCount() > 0) {
            for (int i = 0; i < getTutorialCount(); i++) {
                List<TutorialController$TutorialType> tutorialTypes = ((TutorialContainerView$TutorialView) this.mViewFlipper.getChildAt(i)).getContent().getTutorialTypes();
                for (int i2 = 0; i2 < tutorialTypes.size(); i2++) {
                    if (tutorialController$TutorialType == tutorialTypes.get(i2)) {
                        int i3 = i2 + 1;
                        if (i3 < tutorialTypes.size()) {
                            return tutorialTypes.get(i3);
                        }
                        int i4 = i + 1;
                        if (i4 >= getTutorialCount()) {
                            return null;
                        }
                        tutorialTypes = ((TutorialContainerView$TutorialView) this.mViewFlipper.getChildAt(i4)).getContent().getTutorialTypes();
                        if (tutorialTypes.size() > 0) {
                            return tutorialTypes.get(0);
                        }
                    }
                }
            }
        }
        return null;
    }

    private TutorialContainerView$TutorialView getTutorialView(TutorialController$TutorialType tutorialController$TutorialType) {
        TutorialContainerView$TutorialView tutorialContainerView$TutorialView = null;
        if (this.mViewFlipper != null) {
            for (int i = 0; i < getTutorialCount(); i++) {
                tutorialContainerView$TutorialView = (TutorialContainerView$TutorialView) this.mViewFlipper.getChildAt(i);
                if (tutorialContainerView$TutorialView.getTag() == tutorialController$TutorialType) {
                    return tutorialContainerView$TutorialView;
                }
            }
        }
        return tutorialContainerView$TutorialView;
    }

    private boolean canHandleNextAction(TutorialController$TutorialType tutorialController$TutorialType) {
        return this.mPreviousType != tutorialController$TutorialType;
    }

    public boolean hasNext(TutorialController$TutorialType tutorialController$TutorialType) {
        if (this.mViewFlipper != null && getTutorialCount() > 0) {
            List<TutorialController$TutorialType> tutorialTypes = ((TutorialContainerView$TutorialView) this.mViewFlipper.getChildAt(getTutorialCount() - 1)).getContent().getTutorialTypes();
            if (tutorialTypes.get(tutorialTypes.size() - 1) == tutorialController$TutorialType) {
                return false;
            }
        }
        return true;
    }

    private void updateFlipperAnimation() {
        int i;
        int i2;
        if (this.mViewFlipper == null) {
            return;
        }
        if (this.mOrientation != 1) {
            i = 2130771997;
            i2 = 2130771995;
        } else {
            i = 2130771998;
            i2 = 2130771996;
        }
        this.mViewFlipper.setOutAnimation(AnimationUtils.loadAnimation(this.mContext, i));
        this.mViewFlipper.setInAnimation(AnimationUtils.loadAnimation(this.mContext, i2));
    }

    private ObjectAnimator getSlideInAnimator(long j) {
        PathInterpolator pathInterpolator = new PathInterpolator(0.645f, 0.045f, 0.355f, 1.0f);
        int dimension = (int) this.mContainer.getResources().getDimension(2131165701);
        String str = isPortrait() ? "translationY" : "translationX";
        float[] fArr = new float[2];
        if (isPortrait()) {
            dimension = -dimension;
        }
        fArr[0] = dimension;
        fArr[1] = 0.0f;
        ObjectAnimator objectAnimatorOfPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(this.mContainer, PropertyValuesHolder.ofFloat(str, fArr));
        objectAnimatorOfPropertyValuesHolder.setDuration(j);
        objectAnimatorOfPropertyValuesHolder.setInterpolator(pathInterpolator);
        objectAnimatorOfPropertyValuesHolder.addListener(new TutorialController$2(this));
        return objectAnimatorOfPropertyValuesHolder;
    }

    private ObjectAnimator getFadeOutAnimator(long j) {
        PathInterpolator pathInterpolator = new PathInterpolator(0.645f, 0.045f, 0.355f, 1.0f);
        ObjectAnimator objectAnimatorOfPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(this.mContainer, PropertyValuesHolder.ofFloat("alpha", 1.0f, 0.0f));
        objectAnimatorOfPropertyValuesHolder.setDuration(j);
        objectAnimatorOfPropertyValuesHolder.setInterpolator(pathInterpolator);
        objectAnimatorOfPropertyValuesHolder.addListener(new TutorialController$3(this));
        return objectAnimatorOfPropertyValuesHolder;
    }

    public void setOnClickTutorialButtonListener(TutorialController$OnClickSetupWizardButtonListener tutorialController$OnClickSetupWizardButtonListener) {
        this.mButtonListener = tutorialController$OnClickSetupWizardButtonListener;
    }

    public void setSystemUiAccessor(TutorialController$SystemUiAccessor tutorialController$SystemUiAccessor) {
        this.mSystemUiAccessor = tutorialController$SystemUiAccessor;
    }

    private void addFlags(int i) {
        if (this.mSystemUiAccessor != null) {
            this.mSystemUiAccessor.onAddFlags(i);
        }
    }

    private void clearFlags(int i) {
        if (this.mSystemUiAccessor != null) {
            this.mSystemUiAccessor.onClearFlags(i);
        }
    }

    public boolean backToPreviousPage() {
        ImageView imageView;
        if (this.mViewFlipper == null || (imageView = (ImageView) this.mViewFlipper.findViewById(2131296490)) == null || !imageView.isShown()) {
            return false;
        }
        imageView.callOnClick();
        return true;
    }

    private void setNavigationBarThemeLight(boolean z) {
        if (this.mWindow != null) {
            int systemUiVisibility = this.mWindow.getDecorView().getSystemUiVisibility();
            this.mWindow.getDecorView().setSystemUiVisibility(z ? systemUiVisibility | 16 : systemUiVisibility & (-17));
        }
    }
}

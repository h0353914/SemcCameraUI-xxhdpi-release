package com.sonyericsson.android.camera.view.tutorial;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.media.MediaPlayer;
import android.media.MediaPlayer$OnErrorListener;
import android.support.v4.view.ViewPager;
import android.support.v4.view.ViewPager$OnPageChangeListener;
import android.util.AttributeSet;
import android.view.Surface;
import android.view.TextureView$SurfaceTextureListener;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup$LayoutParams;
import android.widget.ImageView;
import com.duolingo.open.rtlviewpager.DelegatingPagerAdapter;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.android.camera.view.baselayout.LayoutDependencyResolver;

/* JADX INFO: loaded from: classes.dex */
public class PagingTutorialContentView extends TutorialContentView {
    private static final float REVERSE_DEGREE = 180.0f;
    private static final String TAG = "PagingTutorialContentView";
    private static final boolean TRACE = false;
    private static final double VIDEO_ASPECT_RATIO_LANDSCAPE = 0.75d;
    private static final double VIDEO_ASPECT_RATIO_PORTRAIT = 0.816d;
    private ImageView mIcon;
    private MediaPlayer mMediaPlayer;
    private PagingTutorialNavigator mNavigator;
    MediaPlayer$OnErrorListener mOnErrorListener;
    private final ViewPager$OnPageChangeListener mOnPageChangeListener;
    private ViewPager mPager;
    private SurfaceTexture mSurfaceTexture;
    private TutorialVideoView mVideo;

    static /* synthetic */ PagingTutorialContentView$PagingTutorialContent access$000(PagingTutorialContentView pagingTutorialContentView) {
        return pagingTutorialContentView.getContent();
    }

    static /* synthetic */ ImageView access$100(PagingTutorialContentView pagingTutorialContentView) {
        return pagingTutorialContentView.mIcon;
    }

    static /* synthetic */ MediaPlayer access$1000(PagingTutorialContentView pagingTutorialContentView) {
        return pagingTutorialContentView.mMediaPlayer;
    }

    static /* synthetic */ ImageView access$102(PagingTutorialContentView pagingTutorialContentView, ImageView imageView) {
        pagingTutorialContentView.mIcon = imageView;
        return imageView;
    }

    static /* synthetic */ ViewPager access$1100(PagingTutorialContentView pagingTutorialContentView) {
        return pagingTutorialContentView.mPager;
    }

    static /* synthetic */ TutorialVideoView access$200(PagingTutorialContentView pagingTutorialContentView) {
        return pagingTutorialContentView.mVideo;
    }

    static /* synthetic */ TutorialVideoView access$202(PagingTutorialContentView pagingTutorialContentView, TutorialVideoView tutorialVideoView) {
        pagingTutorialContentView.mVideo = tutorialVideoView;
        return tutorialVideoView;
    }

    static /* synthetic */ void access$300(PagingTutorialContentView pagingTutorialContentView, TutorialVideoView tutorialVideoView) {
        pagingTutorialContentView.prepareTutorialVideoView(tutorialVideoView);
    }

    static /* synthetic */ TextureView$SurfaceTextureListener access$400(PagingTutorialContentView pagingTutorialContentView, int i) {
        return pagingTutorialContentView.createSurfaceTextureListener(i);
    }

    static /* synthetic */ void access$500(PagingTutorialContentView pagingTutorialContentView) {
        pagingTutorialContentView.clearMediaPlayer();
    }

    static /* synthetic */ SurfaceTexture access$600(PagingTutorialContentView pagingTutorialContentView) {
        return pagingTutorialContentView.mSurfaceTexture;
    }

    static /* synthetic */ SurfaceTexture access$602(PagingTutorialContentView pagingTutorialContentView, SurfaceTexture surfaceTexture) {
        pagingTutorialContentView.mSurfaceTexture = surfaceTexture;
        return surfaceTexture;
    }

    static /* synthetic */ void access$700(PagingTutorialContentView pagingTutorialContentView, int i) {
        pagingTutorialContentView.createMediaPlayer(i);
    }

    static /* synthetic */ void access$800(PagingTutorialContentView pagingTutorialContentView) {
        pagingTutorialContentView.resume();
    }

    static /* synthetic */ void access$900(PagingTutorialContentView pagingTutorialContentView) {
        pagingTutorialContentView.suspend();
    }

    private static void trace(String str) {
        CamLog.d(str);
    }

    public PagingTutorialContentView(Context context) {
        super(context);
        this.mOnPageChangeListener = new PagingTutorialContentView$1(this);
        this.mOnErrorListener = new PagingTutorialContentView$4(this);
    }

    public PagingTutorialContentView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mOnPageChangeListener = new PagingTutorialContentView$1(this);
        this.mOnErrorListener = new PagingTutorialContentView$4(this);
    }

    public PagingTutorialContentView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mOnPageChangeListener = new PagingTutorialContentView$1(this);
        this.mOnErrorListener = new PagingTutorialContentView$4(this);
    }

    @Override // com.sonyericsson.android.camera.view.tutorial.TutorialContentView
    protected void onUpdateViewContent() {
        PagingTutorialContentView$PagingTutorialContent content = getContent();
        if (content == null) {
            return;
        }
        this.mPager = (ViewPager) findViewById(2131296682);
        this.mPager.setAdapter(new DelegatingPagerAdapter(new PagingTutorialContentView$PageContentsAdapter(content)));
        ViewGroup viewGroup = (ViewGroup) findViewById(2131296681);
        if (PagingTutorialContentView$5.$SwitchMap$com$sonyericsson$android$camera$view$tutorial$PagingTutorialContentView$TutorialNavigatorType[content.mNavigatorType.ordinal()] == 1) {
            this.mNavigator = (PagingTutorialConfirmNavigator) View.inflate(getContext(), 2131492960, null);
        } else {
            this.mNavigator = (PagingTutorialNormalNavigator) View.inflate(getContext(), 2131492963, null);
        }
        viewGroup.addView(this.mNavigator);
        this.mNavigator.setViewController(new PagingTutorialContentView$PagingTutorialController(this));
        this.mNavigator.setPageSize(content.mPageResources.size());
        if (getResources().getConfiguration().getLayoutDirection() == 1) {
            this.mNavigator.setRotationY(180.0f);
        }
        this.mNavigator.onPageSelected(content.mPageIndex);
        this.mPager.setCurrentItem(content.mPageIndex);
        this.mPager.addOnPageChangeListener(this.mNavigator);
        this.mPager.addOnPageChangeListener(this.mOnPageChangeListener);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mPager.clearOnPageChangeListeners();
    }

    private TextureView$SurfaceTextureListener createSurfaceTextureListener(int i) {
        return new PagingTutorialContentView$2(this, i);
    }

    private void prepareTutorialVideoView(TutorialVideoView tutorialVideoView) {
        int i;
        Context context = getContext();
        PagingTutorialContentView$PagingTutorialContent content = getContent();
        int iHeight = LayoutDependencyResolver.getViewFinderSize(context).height();
        double d = content.isPortrait() ? 0.816d : 0.75d;
        if (content.isPortrait()) {
            iHeight = (int) (((double) iHeight) * d);
            i = iHeight;
        } else {
            i = (int) (((double) iHeight) * d);
        }
        ViewGroup$LayoutParams layoutParams = tutorialVideoView.getLayoutParams();
        layoutParams.width = i;
        layoutParams.height = iHeight;
        tutorialVideoView.setLayoutParams(layoutParams);
    }

    private void createMediaPlayer(int i) {
        clearMediaPlayer();
        this.mMediaPlayer = MediaPlayer.create(getContext(), getContent().mMediaContentsResourceId.get(i).getId());
        this.mVideo.setVideoAspectRatio(this.mMediaPlayer.getVideoHeight() / this.mMediaPlayer.getVideoWidth());
        this.mMediaPlayer.setSurface(new Surface(this.mSurfaceTexture));
        this.mMediaPlayer.setOnErrorListener(this.mOnErrorListener);
        this.mMediaPlayer.setLooping(true);
        this.mMediaPlayer.setOnPreparedListener(new PagingTutorialContentView$3(this));
    }

    private void clearMediaPlayer() {
        if (this.mMediaPlayer != null) {
            this.mMediaPlayer.stop();
            this.mMediaPlayer.reset();
            this.mMediaPlayer.release();
            this.mMediaPlayer = null;
        }
    }

    private void resume() {
        if (this.mMediaPlayer != null) {
            this.mMediaPlayer.start();
        }
    }

    private void suspend() {
        if (this.mMediaPlayer == null || !this.mMediaPlayer.isPlaying()) {
            return;
        }
        this.mMediaPlayer.pause();
    }

    private PagingTutorialContentView$PagingTutorialContent getContent() {
        return (PagingTutorialContentView$PagingTutorialContent) this.mContent;
    }
}

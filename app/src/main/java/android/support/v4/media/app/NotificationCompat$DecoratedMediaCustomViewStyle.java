package android.support.v4.media.app;

import android.app.Notification$DecoratedMediaCustomViewStyle;
import android.os.Build$VERSION;
import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo$Scope;
import android.support.mediacompat.R$color;
import android.support.mediacompat.R$id;
import android.support.mediacompat.R$layout;
import android.support.v4.app.NotificationBuilderWithBuilderAccessor;
import android.widget.RemoteViews;

public class NotificationCompat$DecoratedMediaCustomViewStyle extends NotificationCompat$MediaStyle {
    @Override // android.support.v4.media.app.NotificationCompat$MediaStyle, android.support.v4.app.NotificationCompat$Style
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public void apply(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
        if (Build$VERSION.SDK_INT >= 24) {
            notificationBuilderWithBuilderAccessor.getBuilder().setStyle(fillInMediaStyle(new Notification$DecoratedMediaCustomViewStyle()));
        } else {
            super.apply(notificationBuilderWithBuilderAccessor);
        }
    }

    @Override // android.support.v4.media.app.NotificationCompat$MediaStyle, android.support.v4.app.NotificationCompat$Style
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public RemoteViews makeContentView(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
        if (Build$VERSION.SDK_INT >= 24) {
            return null;
        }
        boolean z = this.mBuilder.getContentView() != null;
        if (Build$VERSION.SDK_INT >= 21) {
            if (z || this.mBuilder.getBigContentView() != null) {
                RemoteViews remoteViewsGenerateContentView = generateContentView();
                if (z) {
                    buildIntoRemoteViews(remoteViewsGenerateContentView, this.mBuilder.getContentView());
                }
                setBackgroundColor(remoteViewsGenerateContentView);
                return remoteViewsGenerateContentView;
            }
        } else {
            RemoteViews remoteViewsGenerateContentView2 = generateContentView();
            if (z) {
                buildIntoRemoteViews(remoteViewsGenerateContentView2, this.mBuilder.getContentView());
                return remoteViewsGenerateContentView2;
            }
        }
        return null;
    }

    @Override // android.support.v4.media.app.NotificationCompat$MediaStyle
    int getContentViewLayoutResource() {
        return this.mBuilder.getContentView() != null ? R$layout.notification_template_media_custom : super.getContentViewLayoutResource();
    }

    @Override // android.support.v4.media.app.NotificationCompat$MediaStyle, android.support.v4.app.NotificationCompat$Style
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public RemoteViews makeBigContentView(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
        RemoteViews contentView;
        if (Build$VERSION.SDK_INT >= 24) {
            return null;
        }
        if (this.mBuilder.getBigContentView() != null) {
            contentView = this.mBuilder.getBigContentView();
        } else {
            contentView = this.mBuilder.getContentView();
        }
        if (contentView == null) {
            return null;
        }
        RemoteViews remoteViewsGenerateBigContentView = generateBigContentView();
        buildIntoRemoteViews(remoteViewsGenerateBigContentView, contentView);
        if (Build$VERSION.SDK_INT >= 21) {
            setBackgroundColor(remoteViewsGenerateBigContentView);
        }
        return remoteViewsGenerateBigContentView;
    }

    @Override // android.support.v4.media.app.NotificationCompat$MediaStyle
    int getBigContentViewLayoutResource(int i) {
        return i <= 3 ? R$layout.notification_template_big_media_narrow_custom : R$layout.notification_template_big_media_custom;
    }

    @Override // android.support.v4.app.NotificationCompat$Style
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public RemoteViews makeHeadsUpContentView(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
        RemoteViews contentView;
        if (Build$VERSION.SDK_INT >= 24) {
            return null;
        }
        if (this.mBuilder.getHeadsUpContentView() != null) {
            contentView = this.mBuilder.getHeadsUpContentView();
        } else {
            contentView = this.mBuilder.getContentView();
        }
        if (contentView == null) {
            return null;
        }
        RemoteViews remoteViewsGenerateBigContentView = generateBigContentView();
        buildIntoRemoteViews(remoteViewsGenerateBigContentView, contentView);
        if (Build$VERSION.SDK_INT >= 21) {
            setBackgroundColor(remoteViewsGenerateBigContentView);
        }
        return remoteViewsGenerateBigContentView;
    }

    private void setBackgroundColor(RemoteViews remoteViews) {
        int color;
        if (this.mBuilder.getColor() != 0) {
            color = this.mBuilder.getColor();
        } else {
            color = this.mBuilder.mContext.getResources().getColor(R$color.notification_material_background_media_default_color);
        }
        remoteViews.setInt(R$id.status_bar_latest_event_content, "setBackgroundColor", color);
    }
}

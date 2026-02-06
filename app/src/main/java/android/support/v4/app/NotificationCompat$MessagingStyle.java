package android.support.v4.app;

import android.app.Notification;
import android.app.Notification$BigTextStyle;
import android.app.Notification$Builder;
import android.app.Notification$MessagingStyle;
import android.app.Notification$MessagingStyle$Message;
import android.content.res.ColorStateList;
import android.os.Build$VERSION;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo$Scope;
import android.support.v4.text.BidiFormatter;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.TextAppearanceSpan;
import java.util.ArrayList;
import java.util.List;

public class NotificationCompat$MessagingStyle extends NotificationCompat$Style {
    public static final int MAXIMUM_RETAINED_MESSAGES = 25;

    @Nullable
    private CharSequence mConversationTitle;

    @Nullable
    private Boolean mIsGroupConversation;
    private final List<NotificationCompat$MessagingStyle$Message> mMessages = new ArrayList();
    private Person mUser;

    private NotificationCompat$MessagingStyle() {
    }

    @Deprecated
    public NotificationCompat$MessagingStyle(@NonNull CharSequence charSequence) {
        this.mUser = new Person$Builder().setName(charSequence).build();
    }

    public NotificationCompat$MessagingStyle(@NonNull Person person) {
        if (TextUtils.isEmpty(person.getName())) {
            throw new IllegalArgumentException("User's name must not be empty.");
        }
        this.mUser = person;
    }

    @Deprecated
    public CharSequence getUserDisplayName() {
        return this.mUser.getName();
    }

    public Person getUser() {
        return this.mUser;
    }

    public NotificationCompat$MessagingStyle setConversationTitle(@Nullable CharSequence charSequence) {
        this.mConversationTitle = charSequence;
        return this;
    }

    @Nullable
    public CharSequence getConversationTitle() {
        return this.mConversationTitle;
    }

    @Deprecated
    public NotificationCompat$MessagingStyle addMessage(CharSequence charSequence, long j, CharSequence charSequence2) {
        this.mMessages.add(new NotificationCompat$MessagingStyle$Message(charSequence, j, new Person$Builder().setName(charSequence2).build()));
        if (this.mMessages.size() > 25) {
            this.mMessages.remove(0);
        }
        return this;
    }

    public NotificationCompat$MessagingStyle addMessage(CharSequence charSequence, long j, Person person) {
        addMessage(new NotificationCompat$MessagingStyle$Message(charSequence, j, person));
        return this;
    }

    public NotificationCompat$MessagingStyle addMessage(NotificationCompat$MessagingStyle$Message notificationCompat$MessagingStyle$Message) {
        this.mMessages.add(notificationCompat$MessagingStyle$Message);
        if (this.mMessages.size() > 25) {
            this.mMessages.remove(0);
        }
        return this;
    }

    public List<NotificationCompat$MessagingStyle$Message> getMessages() {
        return this.mMessages;
    }

    public NotificationCompat$MessagingStyle setGroupConversation(boolean z) {
        this.mIsGroupConversation = Boolean.valueOf(z);
        return this;
    }

    public boolean isGroupConversation() {
        if (this.mBuilder != null && this.mBuilder.mContext.getApplicationInfo().targetSdkVersion < 28 && this.mIsGroupConversation == null) {
            return this.mConversationTitle != null;
        }
        if (this.mIsGroupConversation != null) {
            return this.mIsGroupConversation.booleanValue();
        }
        return false;
    }

    @Nullable
    public static NotificationCompat$MessagingStyle extractMessagingStyleFromNotification(Notification notification) {
        Bundle extras = NotificationCompat.getExtras(notification);
        if (extras != null && !extras.containsKey("android.selfDisplayName") && !extras.containsKey("android.messagingStyleUser")) {
            return null;
        }
        try {
            NotificationCompat$MessagingStyle notificationCompat$MessagingStyle = new NotificationCompat$MessagingStyle();
            notificationCompat$MessagingStyle.restoreFromCompatExtras(extras);
            return notificationCompat$MessagingStyle;
        } catch (ClassCastException unused) {
            return null;
        }
    }

    @Override // android.support.v4.app.NotificationCompat$Style
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public void apply(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
        CharSequence text;
        Notification$MessagingStyle notification$MessagingStyle;
        Notification$MessagingStyle$Message notification$MessagingStyle$Message;
        setGroupConversation(isGroupConversation());
        if (Build$VERSION.SDK_INT >= 24) {
            if (Build$VERSION.SDK_INT >= 28) {
                notification$MessagingStyle = new Notification$MessagingStyle(this.mUser.toAndroidPerson());
            } else {
                notification$MessagingStyle = new Notification$MessagingStyle(this.mUser.getName());
            }
            if (this.mIsGroupConversation.booleanValue() || Build$VERSION.SDK_INT >= 28) {
                notification$MessagingStyle.setConversationTitle(this.mConversationTitle);
            }
            if (Build$VERSION.SDK_INT >= 28) {
                notification$MessagingStyle.setGroupConversation(this.mIsGroupConversation.booleanValue());
            }
            for (NotificationCompat$MessagingStyle$Message notificationCompat$MessagingStyle$Message : this.mMessages) {
                if (Build$VERSION.SDK_INT >= 28) {
                    Person person = notificationCompat$MessagingStyle$Message.getPerson();
                    notification$MessagingStyle$Message = new Notification$MessagingStyle$Message(notificationCompat$MessagingStyle$Message.getText(), notificationCompat$MessagingStyle$Message.getTimestamp(), person == null ? null : person.toAndroidPerson());
                } else {
                    notification$MessagingStyle$Message = new Notification$MessagingStyle$Message(notificationCompat$MessagingStyle$Message.getText(), notificationCompat$MessagingStyle$Message.getTimestamp(), notificationCompat$MessagingStyle$Message.getPerson() != null ? notificationCompat$MessagingStyle$Message.getPerson().getName() : null);
                }
                if (notificationCompat$MessagingStyle$Message.getDataMimeType() != null) {
                    notification$MessagingStyle$Message.setData(notificationCompat$MessagingStyle$Message.getDataMimeType(), notificationCompat$MessagingStyle$Message.getDataUri());
                }
                notification$MessagingStyle.addMessage(notification$MessagingStyle$Message);
            }
            notification$MessagingStyle.setBuilder(notificationBuilderWithBuilderAccessor.getBuilder());
            return;
        }
        NotificationCompat$MessagingStyle$Message notificationCompat$MessagingStyle$MessageFindLatestIncomingMessage = findLatestIncomingMessage();
        if (this.mConversationTitle != null && this.mIsGroupConversation.booleanValue()) {
            notificationBuilderWithBuilderAccessor.getBuilder().setContentTitle(this.mConversationTitle);
        } else if (notificationCompat$MessagingStyle$MessageFindLatestIncomingMessage != null) {
            notificationBuilderWithBuilderAccessor.getBuilder().setContentTitle("");
            if (notificationCompat$MessagingStyle$MessageFindLatestIncomingMessage.getPerson() != null) {
                notificationBuilderWithBuilderAccessor.getBuilder().setContentTitle(notificationCompat$MessagingStyle$MessageFindLatestIncomingMessage.getPerson().getName());
            }
        }
        if (notificationCompat$MessagingStyle$MessageFindLatestIncomingMessage != null) {
            Notification$Builder builder = notificationBuilderWithBuilderAccessor.getBuilder();
            if (this.mConversationTitle != null) {
                text = makeMessageLine(notificationCompat$MessagingStyle$MessageFindLatestIncomingMessage);
            } else {
                text = notificationCompat$MessagingStyle$MessageFindLatestIncomingMessage.getText();
            }
            builder.setContentText(text);
        }
        if (Build$VERSION.SDK_INT >= 16) {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            boolean z = this.mConversationTitle != null || hasMessagesWithoutSender();
            for (int size = this.mMessages.size() - 1; size >= 0; size--) {
                NotificationCompat$MessagingStyle$Message notificationCompat$MessagingStyle$Message2 = this.mMessages.get(size);
                CharSequence charSequenceMakeMessageLine = z ? makeMessageLine(notificationCompat$MessagingStyle$Message2) : notificationCompat$MessagingStyle$Message2.getText();
                if (size != this.mMessages.size() - 1) {
                    spannableStringBuilder.insert(0, (CharSequence) "\n");
                }
                spannableStringBuilder.insert(0, charSequenceMakeMessageLine);
            }
            new Notification$BigTextStyle(notificationBuilderWithBuilderAccessor.getBuilder()).setBigContentTitle(null).bigText(spannableStringBuilder);
        }
    }

    @Nullable
    private NotificationCompat$MessagingStyle$Message findLatestIncomingMessage() {
        for (int size = this.mMessages.size() - 1; size >= 0; size--) {
            NotificationCompat$MessagingStyle$Message notificationCompat$MessagingStyle$Message = this.mMessages.get(size);
            if (notificationCompat$MessagingStyle$Message.getPerson() != null && !TextUtils.isEmpty(notificationCompat$MessagingStyle$Message.getPerson().getName())) {
                return notificationCompat$MessagingStyle$Message;
            }
        }
        if (this.mMessages.isEmpty()) {
            return null;
        }
        return this.mMessages.get(this.mMessages.size() - 1);
    }

    private boolean hasMessagesWithoutSender() {
        for (int size = this.mMessages.size() - 1; size >= 0; size--) {
            NotificationCompat$MessagingStyle$Message notificationCompat$MessagingStyle$Message = this.mMessages.get(size);
            if (notificationCompat$MessagingStyle$Message.getPerson() != null && notificationCompat$MessagingStyle$Message.getPerson().getName() == null) {
                return true;
            }
        }
        return false;
    }

    private CharSequence makeMessageLine(NotificationCompat$MessagingStyle$Message notificationCompat$MessagingStyle$Message) {
        BidiFormatter bidiFormatter = BidiFormatter.getInstance();
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        boolean z = Build$VERSION.SDK_INT >= 21;
        int color = z ? -16777216 : -1;
        CharSequence name = notificationCompat$MessagingStyle$Message.getPerson() == null ? "" : notificationCompat$MessagingStyle$Message.getPerson().getName();
        if (TextUtils.isEmpty(name)) {
            name = this.mUser.getName();
            if (z && this.mBuilder.getColor() != 0) {
                color = this.mBuilder.getColor();
            }
        }
        CharSequence charSequenceUnicodeWrap = bidiFormatter.unicodeWrap(name);
        spannableStringBuilder.append(charSequenceUnicodeWrap);
        spannableStringBuilder.setSpan(makeFontColorSpan(color), spannableStringBuilder.length() - charSequenceUnicodeWrap.length(), spannableStringBuilder.length(), 33);
        spannableStringBuilder.append((CharSequence) "  ").append(bidiFormatter.unicodeWrap(notificationCompat$MessagingStyle$Message.getText() == null ? "" : notificationCompat$MessagingStyle$Message.getText()));
        return spannableStringBuilder;
    }

    @NonNull
    private TextAppearanceSpan makeFontColorSpan(int i) {
        return new TextAppearanceSpan(null, 0, 0, ColorStateList.valueOf(i), null);
    }

    @Override // android.support.v4.app.NotificationCompat$Style
    public void addCompatExtras(Bundle bundle) {
        super.addCompatExtras(bundle);
        bundle.putCharSequence("android.selfDisplayName", this.mUser.getName());
        bundle.putBundle("android.messagingStyleUser", this.mUser.toBundle());
        bundle.putCharSequence("android.hiddenConversationTitle", this.mConversationTitle);
        if (this.mConversationTitle != null && this.mIsGroupConversation.booleanValue()) {
            bundle.putCharSequence("android.conversationTitle", this.mConversationTitle);
        }
        if (!this.mMessages.isEmpty()) {
            bundle.putParcelableArray("android.messages", NotificationCompat$MessagingStyle$Message.getBundleArrayForMessages(this.mMessages));
        }
        if (this.mIsGroupConversation != null) {
            bundle.putBoolean("android.isGroupConversation", this.mIsGroupConversation.booleanValue());
        }
    }

    @Override // android.support.v4.app.NotificationCompat$Style
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    protected void restoreFromCompatExtras(Bundle bundle) {
        this.mMessages.clear();
        if (bundle.containsKey("android.messagingStyleUser")) {
            this.mUser = Person.fromBundle(bundle.getBundle("android.messagingStyleUser"));
        } else {
            this.mUser = new Person$Builder().setName(bundle.getString("android.selfDisplayName")).build();
        }
        this.mConversationTitle = bundle.getCharSequence("android.conversationTitle");
        if (this.mConversationTitle == null) {
            this.mConversationTitle = bundle.getCharSequence("android.hiddenConversationTitle");
        }
        Parcelable[] parcelableArray = bundle.getParcelableArray("android.messages");
        if (parcelableArray != null) {
            this.mMessages.addAll(NotificationCompat$MessagingStyle$Message.getMessagesFromBundleArray(parcelableArray));
        }
        if (bundle.containsKey("android.isGroupConversation")) {
            this.mIsGroupConversation = Boolean.valueOf(bundle.getBoolean("android.isGroupConversation"));
        }
    }
}

.class public final Lcom/google/android/gms/common/internal/zzg;
.super Ljava/lang/Object;


# direct methods
.method public static zzc(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_4

    const/4 v0, 0x7

    if-eq p1, v0, :cond_3

    const/16 v0, 0x9

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_2

    const/16 v0, 0x2a

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    sget p1, Lcom/google/android/gms/R$string;->common_google_play_services_unknown_issue:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    sget p1, Lcom/google/android/gms/R$string;->common_google_play_services_updating_text:I

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    sget p1, Lcom/google/android/gms/R$string;->common_google_play_services_sign_in_failed_text:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    sget p1, Lcom/google/android/gms/R$string;->common_google_play_services_api_unavailable_text:I

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_3
    sget p1, Lcom/google/android/gms/R$string;->common_google_play_services_enable_text:I

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_4
    sget p1, Lcom/google/android/gms/R$string;->common_google_play_services_update_text:I

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-static {p0}, Lcom/google/android/gms/internal/zzmq;->zzb(Landroid/content/res/Resources;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget p1, Lcom/google/android/gms/R$string;->common_google_play_services_install_text_tablet:I

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    sget p1, Lcom/google/android/gms/R$string;->common_google_play_services_install_text_phone:I

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    sget p1, Lcom/google/android/gms/R$string;->common_android_wear_update_text:I

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    sget p1, Lcom/google/android/gms/R$string;->common_google_play_services_unsupported_text:I

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    sget p1, Lcom/google/android/gms/R$string;->common_google_play_services_network_error_text:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    sget p1, Lcom/google/android/gms/R$string;->common_google_play_services_invalid_account_text:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static zzd(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_4

    const/4 v0, 0x7

    if-eq p1, v0, :cond_3

    const/16 v0, 0x9

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_2

    const/16 v0, 0x2a

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    sget p1, Lcom/google/android/gms/R$string;->common_google_play_services_unknown_issue:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    sget p1, Lcom/google/android/gms/R$string;->common_google_play_services_updating_text:I

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    sget p1, Lcom/google/android/gms/R$string;->common_google_play_services_sign_in_failed_text:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    sget p1, Lcom/google/android/gms/R$string;->common_google_play_services_api_unavailable_text:I

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_3
    sget p1, Lcom/google/android/gms/R$string;->common_google_play_services_enable_text:I

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_4
    sget p1, Lcom/google/android/gms/R$string;->common_google_play_services_update_text:I

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-static {p0}, Lcom/google/android/gms/internal/zzmq;->zzb(Landroid/content/res/Resources;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget p1, Lcom/google/android/gms/R$string;->common_google_play_services_install_text_tablet:I

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    sget p1, Lcom/google/android/gms/R$string;->common_google_play_services_install_text_phone:I

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    sget p1, Lcom/google/android/gms/R$string;->common_android_wear_notification_needs_update_text:I

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    sget p1, Lcom/google/android/gms/R$string;->common_google_play_services_unsupported_text:I

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    sget p1, Lcom/google/android/gms/R$string;->common_google_play_services_network_error_text:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    sget p1, Lcom/google/android/gms/R$string;->common_google_play_services_invalid_account_text:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final zzg(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/16 v0, 0x2a

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    const-string p0, "GoogleApiAvailability"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected error code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :pswitch_0
    sget p1, Lcom/google/android/gms/R$string;->common_google_play_services_updating_title:I

    :goto_1
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    const-string p1, "GoogleApiAvailability"

    const-string v0, "The specified account could not be signed in."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget p1, Lcom/google/android/gms/R$string;->common_google_play_services_sign_in_failed_title:I

    goto :goto_1

    :pswitch_2
    const-string p0, "GoogleApiAvailability"

    const-string p1, "One of the API components you attempted to connect to is not available."

    goto :goto_0

    :pswitch_3
    const-string p0, "GoogleApiAvailability"

    const-string p1, "The application is not licensed to the user."

    goto :goto_0

    :pswitch_4
    const-string p0, "GoogleApiAvailability"

    const-string p1, "Developer error occurred. Please see logs for detailed information"

    goto :goto_0

    :pswitch_5
    const-string p1, "GoogleApiAvailability"

    const-string v0, "Google Play services is invalid. Cannot recover."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget p1, Lcom/google/android/gms/R$string;->common_google_play_services_unsupported_title:I

    goto :goto_1

    :pswitch_6
    const-string p0, "GoogleApiAvailability"

    const-string p1, "Internal error occurred. Please see logs for detailed information"

    goto :goto_0

    :pswitch_7
    const-string p1, "GoogleApiAvailability"

    const-string v0, "Network error occurred. Please retry request later."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget p1, Lcom/google/android/gms/R$string;->common_google_play_services_network_error_title:I

    goto :goto_1

    :pswitch_8
    const-string p1, "GoogleApiAvailability"

    const-string v0, "An invalid account was specified when connecting. Please provide a valid account."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget p1, Lcom/google/android/gms/R$string;->common_google_play_services_invalid_account_title:I

    goto :goto_1

    :pswitch_9
    return-object v0

    :pswitch_a
    sget p1, Lcom/google/android/gms/R$string;->common_google_play_services_enable_title:I

    goto :goto_1

    :pswitch_b
    sget p1, Lcom/google/android/gms/R$string;->common_google_play_services_update_title:I

    goto :goto_1

    :pswitch_c
    sget p1, Lcom/google/android/gms/R$string;->common_google_play_services_install_title:I

    goto :goto_1

    :cond_0
    sget p1, Lcom/google/android/gms/R$string;->common_android_wear_update_title:I

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_9
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static zzh(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/16 v0, 0x2a

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const p1, 0x104000a

    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    sget p1, Lcom/google/android/gms/R$string;->common_google_play_services_enable_button:I

    goto :goto_0

    :pswitch_1
    sget p1, Lcom/google/android/gms/R$string;->common_google_play_services_install_button:I

    goto :goto_0

    :cond_0
    :pswitch_2
    sget p1, Lcom/google/android/gms/R$string;->common_google_play_services_update_button:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static final zzi(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/16 v0, 0x2a

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    const-string p0, "GoogleApiAvailability"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected error code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :pswitch_0
    sget p1, Lcom/google/android/gms/R$string;->common_google_play_services_updating_title:I

    :goto_1
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    const-string p1, "GoogleApiAvailability"

    const-string v0, "The specified account could not be signed in."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget p1, Lcom/google/android/gms/R$string;->common_google_play_services_sign_in_failed_title:I

    goto :goto_1

    :pswitch_2
    const-string p0, "GoogleApiAvailability"

    const-string p1, "One of the API components you attempted to connect to is not available."

    goto :goto_0

    :pswitch_3
    const-string p0, "GoogleApiAvailability"

    const-string p1, "The application is not licensed to the user."

    goto :goto_0

    :pswitch_4
    const-string p0, "GoogleApiAvailability"

    const-string p1, "Developer error occurred. Please see logs for detailed information"

    goto :goto_0

    :pswitch_5
    const-string p1, "GoogleApiAvailability"

    const-string v0, "Google Play services is invalid. Cannot recover."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget p1, Lcom/google/android/gms/R$string;->common_google_play_services_unsupported_title:I

    goto :goto_1

    :pswitch_6
    const-string p0, "GoogleApiAvailability"

    const-string p1, "Internal error occurred. Please see logs for detailed information"

    goto :goto_0

    :pswitch_7
    const-string p1, "GoogleApiAvailability"

    const-string v0, "Network error occurred. Please retry request later."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget p1, Lcom/google/android/gms/R$string;->common_google_play_services_network_error_title:I

    goto :goto_1

    :pswitch_8
    const-string p1, "GoogleApiAvailability"

    const-string v0, "An invalid account was specified when connecting. Please provide a valid account."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget p1, Lcom/google/android/gms/R$string;->common_google_play_services_invalid_account_title:I

    goto :goto_1

    :pswitch_9
    return-object v0

    :pswitch_a
    sget p1, Lcom/google/android/gms/R$string;->common_google_play_services_enable_title:I

    goto :goto_1

    :pswitch_b
    sget p1, Lcom/google/android/gms/R$string;->common_google_play_services_update_title:I

    goto :goto_1

    :pswitch_c
    sget p1, Lcom/google/android/gms/R$string;->common_google_play_services_install_title:I

    goto :goto_1

    :cond_0
    sget p1, Lcom/google/android/gms/R$string;->common_android_wear_update_title:I

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_9
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

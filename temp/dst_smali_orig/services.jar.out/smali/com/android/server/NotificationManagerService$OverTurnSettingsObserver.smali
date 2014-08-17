.class Lcom/android/server/NotificationManagerService$OverTurnSettingsObserver;
.super Landroid/database/ContentObserver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OverTurnSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/NotificationManagerService;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    iput-object p1, p0, Lcom/android/server/NotificationManagerService$OverTurnSettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method observe()V
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/server/NotificationManagerService$OverTurnSettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "motion_overturn"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/server/NotificationManagerService$OverTurnSettingsObserver;->update()V

    return-void
.end method

.method public onChange(Z)V
    .locals 0
    .parameter "selfChange"

    .prologue
    invoke-virtual {p0}, Lcom/android/server/NotificationManagerService$OverTurnSettingsObserver;->update()V

    return-void
.end method

.method public update()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    .local v0, motion:Z
    const/4 v1, 0x0

    .local v1, overturn:Z
    iget-object v5, p0, Lcom/android/server/NotificationManagerService$OverTurnSettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v5, v5, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .local v2, resolver:Landroid/content/ContentResolver;
    const-string v5, "motion_engine"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_1

    move v0, v3

    :goto_0
    if-eqz v0, :cond_0

    const-string v5, "motion_overturn"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_2

    move v1, v3

    :cond_0
    :goto_1
    iget-object v5, p0, Lcom/android/server/NotificationManagerService$OverTurnSettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mSound:Lcom/android/server/NotificationPlayer;
    invoke-static {v5}, Lcom/android/server/NotificationManagerService;->access$400(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationPlayer;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/NotificationManagerService$OverTurnSettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v6, v6, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    :goto_2
    invoke-virtual {v5, v6, v3}, Lcom/android/server/NotificationPlayer;->setMotionEnabled(Landroid/content/Context;Z)V

    return-void

    :cond_1
    move v0, v4

    goto :goto_0

    :cond_2
    move v1, v4

    goto :goto_1

    :cond_3
    move v3, v4

    goto :goto_2
.end method

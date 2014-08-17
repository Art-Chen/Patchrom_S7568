.class Lcom/android/server/NotificationManagerService$PickupSettingsObserver;
.super Landroid/database/ContentObserver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PickupSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/NotificationManagerService;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 1508
    iput-object p1, p0, Lcom/android/server/NotificationManagerService$PickupSettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    .line 1509
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1510
    return-void
.end method


# virtual methods
.method observe()V
    .locals 3

    .prologue
    .line 1513
    iget-object v1, p0, Lcom/android/server/NotificationManagerService$PickupSettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1514
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "motion_pick_up"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1515
    invoke-virtual {p0}, Lcom/android/server/NotificationManagerService$PickupSettingsObserver;->update()V

    .line 1516
    return-void
.end method

.method public onChange(Z)V
    .locals 0
    .parameter "selfChange"

    .prologue
    .line 1519
    invoke-virtual {p0}, Lcom/android/server/NotificationManagerService$PickupSettingsObserver;->update()V

    .line 1520
    return-void
.end method

.method public update()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1523
    const-string v1, "STATUSBAR-NotificationService"

    const-string v2, "PickupSettingsObserver - update()"

    invoke-static {v1, v2}, Landroid/util/safelog/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1524
    iget-object v1, p0, Lcom/android/server/NotificationManagerService$PickupSettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/NotificationManagerService;->mPickupPlayer:Lcom/android/server/NotificationManagerService$PickupPlayer;

    iget-object v2, p0, Lcom/android/server/NotificationManagerService$PickupSettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "motion_pick_up"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Lcom/android/server/NotificationManagerService$PickupPlayer;->setPickupMotionEnabled(Z)V

    .line 1525
    return-void
.end method

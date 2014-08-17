.class Lcom/android/internal/widget/LockPatternUtils$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "LockPatternUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/LockPatternUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 1
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternUtils$SettingsObserver;->this$0:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method observe()V
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils$SettingsObserver;->this$0:Lcom/android/internal/widget/LockPatternUtils;

    #getter for: Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/widget/LockPatternUtils;->access$000(Lcom/android/internal/widget/LockPatternUtils;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "lock_pcw_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils$SettingsObserver;->this$0:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->updateSettings()V

    return-void
.end method

.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils$SettingsObserver;->this$0:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->updateSettings()V

    return-void
.end method

.class Lcom/samsung/CustomerCrashReport$CCRPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "CustomerCrashReport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/CustomerCrashReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CCRPackageMonitor"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/samsung/CustomerCrashReport;


# direct methods
.method public constructor <init>(Lcom/samsung/CustomerCrashReport;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    iput-object p1, p0, Lcom/samsung/CustomerCrashReport$CCRPackageMonitor;->this$0:Lcom/samsung/CustomerCrashReport;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/CustomerCrashReport$CCRPackageMonitor;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/CustomerCrashReport$CCRPackageMonitor;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method isExactlyCCR(Ljava/lang/String;)Z
    .locals 2
    .parameter "packageName"

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.samsung.ccr"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/samsung/CustomerCrashReport;->isCCRInstalled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z
    .locals 1
    .parameter "intent"
    .parameter "packages"
    .parameter "uid"
    .parameter "doit"

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 2
    .parameter "packageName"
    .parameter "uid"

    .prologue
    invoke-virtual {p0, p1}, Lcom/samsung/CustomerCrashReport$CCRPackageMonitor;->isExactlyCCR(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "sys.ccr"

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 4
    .parameter "packageName"
    .parameter "uid"
    .parameter "components"

    .prologue
    invoke-virtual {p0, p1}, Lcom/samsung/CustomerCrashReport$CCRPackageMonitor;->isExactlyCCR(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/CustomerCrashReport$CCRPackageMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v1, "sys.ccr"

    const-string v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "CCR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connot get applicationEnlabledSetting : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :pswitch_1
    :try_start_1
    const-string v1, "sys.ccr"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 2
    .parameter "packageName"
    .parameter "uid"

    .prologue
    invoke-virtual {p0, p1}, Lcom/samsung/CustomerCrashReport$CCRPackageMonitor;->isExactlyCCR(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "sys.ccr"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/CustomerCrashReport;->access$002(Z)Z

    :cond_0
    return-void
.end method

.method public onPackageUpdateFinished(Ljava/lang/String;I)V
    .locals 2
    .parameter "packageName"
    .parameter "uid"

    .prologue
    invoke-virtual {p0, p1}, Lcom/samsung/CustomerCrashReport$CCRPackageMonitor;->isExactlyCCR(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "sys.ccr"

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPackageUpdateStarted(Ljava/lang/String;I)V
    .locals 0
    .parameter "packageName"
    .parameter "uid"

    .prologue
    return-void
.end method

.method public onPackagesAvailable([Ljava/lang/String;)V
    .locals 3
    .parameter "packages"

    .prologue
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/samsung/CustomerCrashReport$CCRPackageMonitor;->isExactlyCCR(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "sys.ccr"

    const-string v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onPackagesUnavailable([Ljava/lang/String;)V
    .locals 3
    .parameter "packages"

    .prologue
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/samsung/CustomerCrashReport$CCRPackageMonitor;->isExactlyCCR(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "sys.ccr"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onUidRemoved(I)V
    .locals 0
    .parameter "uid"

    .prologue
    return-void
.end method

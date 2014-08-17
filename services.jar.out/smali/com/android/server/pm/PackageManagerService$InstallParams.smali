.class Lcom/android/server/pm/PackageManagerService$InstallParams;
.super Lcom/android/server/pm/PackageManagerService$HandlerParams;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InstallParams"
.end annotation


# instance fields
.field flags:I

.field final installerPackageName:Ljava/lang/String;

.field private mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

.field private mRet:I

.field final manifestDigest:Landroid/content/pm/ManifestDigest;

.field final observer:Landroid/content/pm/IPackageInstallObserver;

.field final packageURI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final verificationURI:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;Landroid/net/Uri;Landroid/content/pm/ManifestDigest;)V
    .locals 1
    .parameter
    .parameter "packageURI"
    .parameter "observer"
    .parameter "flags"
    .parameter "installerPackageName"
    .parameter "verificationURI"
    .parameter "manifestDigest"

    .prologue
    .line 6429
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PackageManagerService$HandlerParams;-><init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$1;)V

    .line 6430
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageURI:Landroid/net/Uri;

    .line 6431
    iput p4, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->flags:I

    .line 6432
    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->observer:Landroid/content/pm/IPackageInstallObserver;

    .line 6433
    iput-object p5, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerPackageName:Ljava/lang/String;

    .line 6434
    iput-object p6, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationURI:Landroid/net/Uri;

    .line 6435
    iput-object p7, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->manifestDigest:Landroid/content/pm/ManifestDigest;

    .line 6436
    return-void
.end method

.method private installLocationPolicy(Landroid/content/pm/PackageInfoLite;I)I
    .locals 8
    .parameter "pkgLite"
    .parameter "flags"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 6439
    iget-object v2, p1, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    .line 6440
    .local v2, packageName:Ljava/lang/String;
    iget v0, p1, Landroid/content/pm/PackageInfoLite;->installLocation:I

    .line 6441
    .local v0, installLocation:I
    and-int/lit8 v6, p2, 0x8

    if-eqz v6, :cond_0

    move v1, v4

    .line 6443
    .local v1, onSd:Z
    :goto_0
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v6

    .line 6444
    :try_start_0
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Package;

    .line 6445
    .local v3, pkg:Landroid/content/pm/PackageParser$Package;
    if-eqz v3, :cond_5

    .line 6446
    and-int/lit8 v7, p2, 0x2

    if-eqz v7, :cond_8

    .line 6448
    iget-object v7, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_2

    .line 6449
    if-eqz v1, :cond_1

    .line 6450
    const-string v4, "PackageManager"

    const-string v5, "Cannot install update to system app on sdcard"

    invoke-static {v4, v5}, Landroid/util/safelog/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6451
    const/4 v4, -0x3

    monitor-exit v6

    .line 6484
    :goto_1
    return v4

    .line 6441
    .end local v1           #onSd:Z
    .end local v3           #pkg:Landroid/content/pm/PackageParser$Package;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 6453
    .restart local v1       #onSd:Z
    .restart local v3       #pkg:Landroid/content/pm/PackageParser$Package;
    :cond_1
    monitor-exit v6

    goto :goto_1

    .line 6478
    .end local v3           #pkg:Landroid/content/pm/PackageParser$Package;
    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 6455
    .restart local v3       #pkg:Landroid/content/pm/PackageParser$Package;
    :cond_2
    if-eqz v1, :cond_3

    .line 6457
    :try_start_1
    monitor-exit v6

    move v4, v5

    goto :goto_1

    .line 6460
    :cond_3
    if-ne v0, v4, :cond_4

    .line 6462
    monitor-exit v6

    goto :goto_1

    .line 6463
    :cond_4
    if-ne v0, v5, :cond_6

    .line 6478
    :cond_5
    monitor-exit v6

    .line 6481
    if-eqz v1, :cond_9

    move v4, v5

    .line 6482
    goto :goto_1

    .line 6467
    :cond_6
    #calls: Lcom/android/server/pm/PackageManagerService;->isExternal(Landroid/content/pm/PackageParser$Package;)Z
    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService;->access$1700(Landroid/content/pm/PackageParser$Package;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 6468
    monitor-exit v6

    move v4, v5

    goto :goto_1

    .line 6470
    :cond_7
    monitor-exit v6

    goto :goto_1

    .line 6475
    :cond_8
    const/4 v4, -0x4

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 6484
    :cond_9
    iget v4, p1, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    goto :goto_1
.end method


# virtual methods
.method handleReturnCode()V
    .locals 3

    .prologue
    .line 6688
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    if-eqz v0, :cond_0

    .line 6689
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    iget v2, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    #calls: Lcom/android/server/pm/PackageManagerService;->processPendingInstall(Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->access$700(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V

    .line 6691
    :cond_0
    return-void
.end method

.method handleServiceError()V
    .locals 1

    .prologue
    .line 6695
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #calls: Lcom/android/server/pm/PackageManagerService;->createInstallArgs(Lcom/android/server/pm/PackageManagerService$InstallParams;)Lcom/android/server/pm/PackageManagerService$InstallArgs;
    invoke-static {v0, p0}, Lcom/android/server/pm/PackageManagerService;->access$1800(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallParams;)Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    .line 6696
    const/16 v0, -0x6e

    iput v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    .line 6697
    return-void
.end method

.method public handleStartCopy()V
    .locals 33
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6494
    const/16 v27, 0x1

    .line 6495
    .local v27, ret:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_4

    const/4 v15, 0x1

    .line 6496
    .local v15, fwdLocked:Z
    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->flags:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_5

    const/16 v21, 0x0

    .line 6497
    .local v21, onSd:Z
    :goto_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->flags:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_6

    const/16 v20, 0x1

    .line 6498
    .local v20, onInt:Z
    :goto_2
    const/16 v22, 0x0

    .line 6500
    .local v22, pkgLite:Landroid/content/pm/PackageInfoLite;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v5, "enterprise_policy"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 6502
    .local v14, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #getter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService;->access$400(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageURI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->flags:I

    const-wide/16 v7, 0x0

    invoke-interface {v3, v5, v6, v7, v8}, Lcom/android/internal/app/IMediaContainerService;->getMinimalPackageInfo(Landroid/net/Uri;IJ)Landroid/content/pm/PackageInfoLite;

    move-result-object v23

    .line 6505
    .local v23, pkgLiteTemp:Landroid/content/pm/PackageInfoLite;
    const-string v3, "PackageManager"

    const-string v5, "verifying app can be installed or not"

    invoke-static {v3, v5}, Landroid/util/safelog/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6506
    invoke-virtual {v14}, Landroid/app/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v3

    move-object/from16 v0, v23

    iget-object v5, v0, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageURI:Landroid/net/Uri;

    invoke-virtual {v3, v5, v6}, Landroid/app/enterprise/ApplicationPolicy;->isApplicationInstallationEnabled(Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 6508
    const-string v3, "PackageManager"

    const-string v5, "This app installation is not allowed"

    invoke-static {v3, v5}, Landroid/util/safelog/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6509
    const/16 v27, -0x6e

    .line 6576
    :cond_0
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, p0

    #calls: Lcom/android/server/pm/PackageManagerService;->createInstallArgs(Lcom/android/server/pm/PackageManagerService$InstallParams;)Lcom/android/server/pm/PackageManagerService$InstallArgs;
    invoke-static {v3, v0}, Lcom/android/server/pm/PackageManagerService;->access$1800(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallParams;)Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v12

    .line 6577
    .local v12, args:Lcom/android/server/pm/PackageManagerService$InstallArgs;
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    .line 6579
    const/4 v3, 0x1

    move/from16 v0, v27

    if-ne v0, v3, :cond_3

    .line 6584
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #getter for: Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService;->access$1900(Lcom/android/server/pm/PackageManagerService;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_12

    const/16 v25, -0x1

    .line 6586
    .local v25, requiredUid:I
    :goto_4
    const/4 v3, -0x1

    move/from16 v0, v25

    if-eq v0, v3, :cond_14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #calls: Lcom/android/server/pm/PackageManagerService;->isVerificationEnabled()Z
    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService;->access$2000(Lcom/android/server/pm/PackageManagerService;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 6587
    new-instance v4, Landroid/content/Intent;

    const-string v3, "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

    invoke-direct {v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6588
    .local v4, verification:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageURI:Landroid/net/Uri;

    const-string v5, "application/vnd.android.package-archive"

    invoke-virtual {v4, v3, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 6589
    const/4 v3, 0x1

    invoke-virtual {v4, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6591
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v5, 0x0

    const/16 v6, 0x200

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/pm/PackageManagerService;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v24

    .line 6600
    .local v24, receivers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService;->access$2108(Lcom/android/server/pm/PackageManagerService;)I

    move-result v30

    .line 6602
    .local v30, verificationId:I
    const-string v3, "android.content.pm.extra.VERIFICATION_ID"

    move/from16 v0, v30

    invoke-virtual {v4, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6604
    const-string v3, "android.content.pm.extra.VERIFICATION_INSTALLER_PACKAGE"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerPackageName:Ljava/lang/String;

    invoke-virtual {v4, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6607
    const-string v3, "android.content.pm.extra.VERIFICATION_INSTALL_FLAGS"

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->flags:I

    invoke-virtual {v4, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6609
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationURI:Landroid/net/Uri;

    if-eqz v3, :cond_1

    .line 6610
    const-string v3, "android.content.pm.extra.VERIFICATION_URI"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationURI:Landroid/net/Uri;

    invoke-virtual {v4, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 6614
    :cond_1
    new-instance v31, Lcom/android/server/pm/PackageVerificationState;

    move-object/from16 v0, v31

    move/from16 v1, v25

    invoke-direct {v0, v1, v12}, Lcom/android/server/pm/PackageVerificationState;-><init>(ILcom/android/server/pm/PackageManagerService$InstallArgs;)V

    .line 6617
    .local v31, verificationState:Lcom/android/server/pm/PackageVerificationState;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    move/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 6619
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v31

    #calls: Lcom/android/server/pm/PackageManagerService;->matchVerifiers(Landroid/content/pm/PackageInfoLite;Ljava/util/List;Lcom/android/server/pm/PackageVerificationState;)Ljava/util/List;
    invoke-static {v3, v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->access$2200(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/PackageInfoLite;Ljava/util/List;Lcom/android/server/pm/PackageVerificationState;)Ljava/util/List;

    move-result-object v29

    .line 6626
    .local v29, sufficientVerifiers:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz v29, :cond_2

    .line 6627
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v11

    .line 6628
    .local v11, N:I
    if-nez v11, :cond_13

    .line 6629
    const-string v3, "PackageManager"

    const-string v5, "Additional verifiers required, but none installed."

    invoke-static {v3, v5}, Landroid/util/safelog/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6630
    const/16 v27, -0x16

    .line 6643
    .end local v11           #N:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #getter for: Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/pm/PackageManagerService;->access$1900(Lcom/android/server/pm/PackageManagerService;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v24

    #calls: Lcom/android/server/pm/PackageManagerService;->matchComponentForVerifier(Ljava/lang/String;Ljava/util/List;)Landroid/content/ComponentName;
    invoke-static {v3, v5, v0}, Lcom/android/server/pm/PackageManagerService;->access$2300(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v26

    .line 6645
    .local v26, requiredVerifierComponent:Landroid/content/ComponentName;
    const/4 v3, 0x1

    move/from16 v0, v27

    if-ne v0, v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #getter for: Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService;->access$1900(Lcom/android/server/pm/PackageManagerService;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 6652
    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 6653
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.PACKAGE_VERIFICATION_AGENT"

    new-instance v6, Lcom/android/server/pm/PackageManagerService$InstallParams$1;

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v6, v0, v1}, Lcom/android/server/pm/PackageManagerService$InstallParams$1;-><init>(Lcom/android/server/pm/PackageManagerService$InstallParams;I)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 6669
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    .line 6680
    .end local v4           #verification:Landroid/content/Intent;
    .end local v24           #receivers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v25           #requiredUid:I
    .end local v26           #requiredVerifierComponent:Landroid/content/ComponentName;
    .end local v29           #sufficientVerifiers:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v30           #verificationId:I
    .end local v31           #verificationState:Lcom/android/server/pm/PackageVerificationState;
    :cond_3
    :goto_5
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    .line 6681
    return-void

    .line 6495
    .end local v12           #args:Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .end local v14           #edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v15           #fwdLocked:Z
    .end local v20           #onInt:Z
    .end local v21           #onSd:Z
    .end local v22           #pkgLite:Landroid/content/pm/PackageInfoLite;
    .end local v23           #pkgLiteTemp:Landroid/content/pm/PackageInfoLite;
    :cond_4
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 6496
    .restart local v15       #fwdLocked:Z
    :cond_5
    const/16 v21, 0x0

    goto/16 :goto_1

    .line 6497
    .restart local v21       #onSd:Z
    :cond_6
    const/16 v20, 0x0

    goto/16 :goto_2

    .line 6513
    .restart local v14       #edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    .restart local v20       #onInt:Z
    .restart local v22       #pkgLite:Landroid/content/pm/PackageInfoLite;
    .restart local v23       #pkgLiteTemp:Landroid/content/pm/PackageInfoLite;
    :cond_7
    if-eqz v20, :cond_8

    if-eqz v21, :cond_8

    .line 6515
    const-string v3, "PackageManager"

    const-string v5, "Conflicting flags specified for installing on both internal and external"

    invoke-static {v3, v5}, Landroid/util/safelog/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6516
    const/16 v27, -0x13

    goto/16 :goto_3

    .line 6517
    :cond_8
    if-eqz v15, :cond_9

    if-eqz v21, :cond_9

    .line 6519
    const-string v3, "PackageManager"

    const-string v5, "Cannot install fwd locked apps on sdcard"

    invoke-static {v3, v5}, Landroid/util/safelog/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6520
    const/16 v27, -0x13

    goto/16 :goto_3

    .line 6524
    :cond_9
    const-string v3, "devicestoragemonitor"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v13

    check-cast v13, Lcom/android/server/DeviceStorageMonitorService;

    .line 6526
    .local v13, dsm:Lcom/android/server/DeviceStorageMonitorService;
    if-nez v13, :cond_a

    .line 6527
    const-string v3, "PackageManager"

    const-string v5, "Couldn\'t get low memory threshold; no free limit imposed"

    invoke-static {v3, v5}, Landroid/util/safelog/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6528
    const-wide/16 v18, 0x0

    .line 6535
    .local v18, lowThreshold:J
    :goto_6
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v5, "com.android.defcontainer"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageURI:Landroid/net/Uri;

    const/4 v7, 0x1

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 6537
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #getter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService;->access$400(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageURI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->flags:I

    move-wide/from16 v0, v18

    invoke-interface {v3, v5, v6, v0, v1}, Lcom/android/internal/app/IMediaContainerService;->getMinimalPackageInfo(Landroid/net/Uri;IJ)Landroid/content/pm/PackageInfoLite;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v22

    .line 6540
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageURI:Landroid/net/Uri;

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    .line 6543
    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    move/from16 v17, v0

    .line 6544
    .local v17, loc:I
    const/4 v3, -0x3

    move/from16 v0, v17

    if-ne v0, v3, :cond_b

    .line 6545
    const/16 v27, -0x13

    goto/16 :goto_3

    .line 6530
    .end local v17           #loc:I
    .end local v18           #lowThreshold:J
    :cond_a
    invoke-virtual {v13}, Lcom/android/server/DeviceStorageMonitorService;->getMemoryLowThreshold()J

    move-result-wide v18

    .restart local v18       #lowThreshold:J
    goto :goto_6

    .line 6540
    :catchall_0
    move-exception v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageURI:Landroid/net/Uri;

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    throw v3

    .line 6546
    .restart local v17       #loc:I
    :cond_b
    const/4 v3, -0x4

    move/from16 v0, v17

    if-ne v0, v3, :cond_c

    .line 6547
    const/16 v27, -0x1

    goto/16 :goto_3

    .line 6548
    :cond_c
    const/4 v3, -0x1

    move/from16 v0, v17

    if-ne v0, v3, :cond_d

    .line 6549
    const/16 v27, -0x4

    goto/16 :goto_3

    .line 6550
    :cond_d
    const/4 v3, -0x2

    move/from16 v0, v17

    if-ne v0, v3, :cond_e

    .line 6551
    const/16 v27, -0x2

    goto/16 :goto_3

    .line 6552
    :cond_e
    const/4 v3, -0x6

    move/from16 v0, v17

    if-ne v0, v3, :cond_f

    .line 6553
    const/16 v27, -0x3

    goto/16 :goto_3

    .line 6554
    :cond_f
    const/4 v3, -0x5

    move/from16 v0, v17

    if-ne v0, v3, :cond_10

    .line 6555
    const/16 v27, -0x14

    goto/16 :goto_3

    .line 6558
    :cond_10
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->flags:I

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    #invoke-direct {v0, v1, v3}, Lcom/android/server/pm/PackageManagerService$InstallParams;->installLocationPolicy(Landroid/content/pm/PackageInfoLite;I)I

    #move-result v17
    const/4 v3, 0x1
    move/from16 v17, v3

    .line 6559
    if-nez v21, :cond_0

    if-nez v20, :cond_0

    .line 6561
    const/4 v3, 0x2

    move/from16 v0, v17

    if-ne v0, v3, :cond_11

    .line 6563
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->flags:I

    or-int/lit8 v3, v3, 0x8

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->flags:I

    .line 6564
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->flags:I

    and-int/lit8 v3, v3, -0x11

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->flags:I

    goto/16 :goto_3

    .line 6568
    :cond_11
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->flags:I

    or-int/lit8 v3, v3, 0x10

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->flags:I

    .line 6569
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->flags:I

    and-int/lit8 v3, v3, -0x9

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->flags:I

    goto/16 :goto_3

    .line 6584
    .end local v13           #dsm:Lcom/android/server/DeviceStorageMonitorService;
    .end local v17           #loc:I
    .end local v18           #lowThreshold:J
    .restart local v12       #args:Lcom/android/server/pm/PackageManagerService$InstallArgs;
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #getter for: Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/pm/PackageManagerService;->access$1900(Lcom/android/server/pm/PackageManagerService;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;)I

    move-result v25

    goto/16 :goto_4

    .line 6632
    .restart local v4       #verification:Landroid/content/Intent;
    .restart local v11       #N:I
    .restart local v24       #receivers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v25       #requiredUid:I
    .restart local v29       #sufficientVerifiers:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    .restart local v30       #verificationId:I
    .restart local v31       #verificationState:Lcom/android/server/pm/PackageVerificationState;
    :cond_13
    const/16 v16, 0x0

    .local v16, i:I
    :goto_7
    move/from16 v0, v16

    if-ge v0, v11, :cond_2

    .line 6633
    move-object/from16 v0, v29

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/content/ComponentName;

    .line 6635
    .local v32, verifierComponent:Landroid/content/ComponentName;
    new-instance v28, Landroid/content/Intent;

    move-object/from16 v0, v28

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 6636
    .local v28, sufficientIntent:Landroid/content/Intent;
    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 6638
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 6632
    add-int/lit8 v16, v16, 0x1

    goto :goto_7

    .line 6676
    .end local v4           #verification:Landroid/content/Intent;
    .end local v11           #N:I
    .end local v16           #i:I
    .end local v24           #receivers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v28           #sufficientIntent:Landroid/content/Intent;
    .end local v29           #sufficientVerifiers:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v30           #verificationId:I
    .end local v31           #verificationState:Lcom/android/server/pm/PackageVerificationState;
    .end local v32           #verifierComponent:Landroid/content/ComponentName;
    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #getter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService;->access$400(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v12, v3, v5}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->copyApk(Lcom/android/internal/app/IMediaContainerService;Z)I

    move-result v27

    goto/16 :goto_5
.end method

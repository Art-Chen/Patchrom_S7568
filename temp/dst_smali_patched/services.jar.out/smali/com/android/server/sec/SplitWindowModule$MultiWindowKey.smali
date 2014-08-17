.class Lcom/android/server/sec/SplitWindowModule$MultiWindowKey;
.super Ljava/lang/Object;
.source "SplitWindowModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sec/SplitWindowModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MultiWindowKey"
.end annotation


# instance fields
.field mCompName:Landroid/content/ComponentName;

.field mTaskId:I

.field final synthetic this$0:Lcom/android/server/sec/SplitWindowModule;


# direct methods
.method public constructor <init>(Lcom/android/server/sec/SplitWindowModule;Landroid/content/ComponentName;I)V
    .locals 0
    .parameter
    .parameter "compName"
    .parameter "taskId"

    .prologue
    iput-object p1, p0, Lcom/android/server/sec/SplitWindowModule$MultiWindowKey;->this$0:Lcom/android/server/sec/SplitWindowModule;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/sec/SplitWindowModule$MultiWindowKey;->mCompName:Landroid/content/ComponentName;

    iput p3, p0, Lcom/android/server/sec/SplitWindowModule$MultiWindowKey;->mTaskId:I

    return-void
.end method


# virtual methods
.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/sec/SplitWindowModule$MultiWindowKey;->mCompName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/sec/SplitWindowModule$MultiWindowKey;->mCompName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTaskId()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/sec/SplitWindowModule$MultiWindowKey;->mTaskId:I

    return v0
.end method

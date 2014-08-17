.class public Landroid/sec/multiwindow/MultiWindowKey;
.super Ljava/lang/Object;
.source "MultiWindowKey.java"


# instance fields
.field mCompName:Landroid/content/ComponentName;

.field mTaskId:I


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;I)V
    .locals 0
    .parameter "compName"
    .parameter "taskId"

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Landroid/sec/multiwindow/MultiWindowKey;->mCompName:Landroid/content/ComponentName;

    .line 15
    iput p2, p0, Landroid/sec/multiwindow/MultiWindowKey;->mTaskId:I

    .line 16
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"

    .prologue
    .line 30
    move-object v0, p1

    check-cast v0, Landroid/sec/multiwindow/MultiWindowKey;

    .line 31
    .local v0, k:Landroid/sec/multiwindow/MultiWindowKey;
    iget-object v1, p0, Landroid/sec/multiwindow/MultiWindowKey;->mCompName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/sec/multiwindow/MultiWindowKey;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/sec/multiwindow/MultiWindowKey;->mTaskId:I

    invoke-virtual {v0}, Landroid/sec/multiwindow/MultiWindowKey;->getTaskId()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 32
    const/4 v1, 0x1

    .line 34
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Landroid/sec/multiwindow/MultiWindowKey;->mCompName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Landroid/sec/multiwindow/MultiWindowKey;->mCompName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTaskId()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Landroid/sec/multiwindow/MultiWindowKey;->mTaskId:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Landroid/sec/multiwindow/MultiWindowKey;->mCompName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->hashCode()I

    move-result v0

    iget v1, p0, Landroid/sec/multiwindow/MultiWindowKey;->mTaskId:I

    add-int/2addr v0, v1

    return v0
.end method

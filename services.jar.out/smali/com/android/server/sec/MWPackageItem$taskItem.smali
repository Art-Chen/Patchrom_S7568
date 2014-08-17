.class public Lcom/android/server/sec/MWPackageItem$taskItem;
.super Ljava/lang/Object;
.source "MWPackageItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sec/MWPackageItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "taskItem"
.end annotation


# instance fields
.field protected mApplicationRect:Landroid/graphics/Rect;

.field protected mMultiWindowFullScreenLock:Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;

.field protected mRestoreRect:Landroid/graphics/Rect;

.field private mTaskId:I


# direct methods
.method public constructor <init>(ILcom/android/server/sec/MWPackageItem$MultiWindowFlag;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 3
    .parameter "taskId"
    .parameter "multiWindowFlag"
    .parameter "applicationRect"
    .parameter "restoreRect"

    .prologue
    .line 143
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 144
    const-string v0, "taskItem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "taskItem : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/sec/multiwindow/MWlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iput p1, p0, Lcom/android/server/sec/MWPackageItem$taskItem;->mTaskId:I

    .line 146
    iput-object p3, p0, Lcom/android/server/sec/MWPackageItem$taskItem;->mApplicationRect:Landroid/graphics/Rect;

    .line 147
    iput-object p4, p0, Lcom/android/server/sec/MWPackageItem$taskItem;->mRestoreRect:Landroid/graphics/Rect;

    .line 148
    iput-object p2, p0, Lcom/android/server/sec/MWPackageItem$taskItem;->mMultiWindowFullScreenLock:Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;

    .line 149
    return-void
.end method


# virtual methods
.method public tiGetFullScreenLock()Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/server/sec/MWPackageItem$taskItem;->mMultiWindowFullScreenLock:Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;

    return-object v0
.end method

.method public tiGetMultiWindowRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/server/sec/MWPackageItem$taskItem;->mApplicationRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public tiGetRestoreRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/server/sec/MWPackageItem$taskItem;->mRestoreRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public tiGetTaskId()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lcom/android/server/sec/MWPackageItem$taskItem;->mTaskId:I

    return v0
.end method

.method public tiIsFullScreen()Z
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/server/sec/MWPackageItem$taskItem;->mMultiWindowFullScreenLock:Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;

    sget-object v1, Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;->TRUE:Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tiSetFullScreenLock(Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;)V
    .locals 0
    .parameter "bLock"

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/server/sec/MWPackageItem$taskItem;->mMultiWindowFullScreenLock:Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;

    .line 161
    return-void
.end method

.method public tiSetMultiWindowRect(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/server/sec/MWPackageItem$taskItem;->mApplicationRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 173
    return-void
.end method

.method public tiSetRestoreRect(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "rect"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/server/sec/MWPackageItem$taskItem;->mRestoreRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 185
    return-void
.end method

.method public tiSetTaskId(I)V
    .locals 0
    .parameter "taskId"

    .prologue
    .line 152
    iput p1, p0, Lcom/android/server/sec/MWPackageItem$taskItem;->mTaskId:I

    .line 153
    return-void
.end method

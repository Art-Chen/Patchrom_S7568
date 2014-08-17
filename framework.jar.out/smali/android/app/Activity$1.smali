.class Landroid/app/Activity$1;
.super Ljava/lang/Object;
.source "Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/Activity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 1091
    iput-object p1, p0, Landroid/app/Activity$1;->this$0:Landroid/app/Activity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1094
    iget-object v2, p0, Landroid/app/Activity$1;->this$0:Landroid/app/Activity;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/app/Activity;->mDispatchingPendingTouchEvents:Z

    .line 1095
    iget-object v2, p0, Landroid/app/Activity$1;->this$0:Landroid/app/Activity;

    iget-object v2, v2, Landroid/app/Activity;->mPendingTouchEvents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MotionEvent;

    .line 1096
    .local v0, ev:Landroid/view/MotionEvent;
    iget-object v2, p0, Landroid/app/Activity$1;->this$0:Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1097
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_0

    .line 1099
    .end local v0           #ev:Landroid/view/MotionEvent;
    :cond_0
    iget-object v2, p0, Landroid/app/Activity$1;->this$0:Landroid/app/Activity;

    iget-object v2, v2, Landroid/app/Activity;->mPendingTouchEvents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1100
    iget-object v2, p0, Landroid/app/Activity$1;->this$0:Landroid/app/Activity;

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/app/Activity;->mDispatchingPendingTouchEvents:Z

    .line 1101
    return-void
.end method

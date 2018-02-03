.class Lui/home/AppLoadViewModel$2;
.super Ljava/lang/Object;
.source "AppLoadViewModel.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lui/home/AppLoadViewModel;-><init>(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer",
        "<",
        "Landroid/support/v4/util/Pair",
        "<",
        "Ljava/util/List",
        "<",
        "Landroid/content/pm/ApplicationInfo;",
        ">;",
        "Ljava/util/List",
        "<",
        "Landroid/content/pm/ApplicationInfo;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lui/home/AppLoadViewModel;


# direct methods
.method constructor <init>(Lui/home/AppLoadViewModel;)V
    .locals 0
    .param p1, "this$0"    # Lui/home/AppLoadViewModel;

    .prologue
    .line 66
    iput-object p1, p0, Lui/home/AppLoadViewModel$2;->this$0:Lui/home/AppLoadViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 0

    .prologue
    .line 87
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 82
    return-void
.end method

.method public onNext(Landroid/support/v4/util/Pair;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/Pair",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, "applicationInfos":Landroid/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;>;"
    iget-object v0, p0, Lui/home/AppLoadViewModel$2;->this$0:Lui/home/AppLoadViewModel;

    invoke-static {v0}, Lui/home/AppLoadViewModel;->access$100(Lui/home/AppLoadViewModel;)Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 76
    iget-object v0, p0, Lui/home/AppLoadViewModel$2;->this$0:Lui/home/AppLoadViewModel;

    invoke-static {v0}, Lui/home/AppLoadViewModel;->access$200(Lui/home/AppLoadViewModel;)Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 77
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 66
    check-cast p1, Landroid/support/v4/util/Pair;

    invoke-virtual {p0, p1}, Lui/home/AppLoadViewModel$2;->onNext(Landroid/support/v4/util/Pair;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0
    .param p1, "d"    # Lio/reactivex/disposables/Disposable;

    .prologue
    .line 69
    return-void
.end method

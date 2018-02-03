.class Lui/home/AppLoadViewModel$3;
.super Ljava/lang/Object;
.source "AppLoadViewModel.java"

# interfaces
.implements Lio/reactivex/functions/BiFunction;


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
        "Lio/reactivex/functions/BiFunction",
        "<",
        "Ljava/lang/String;",
        "Ljava/util/List",
        "<",
        "Landroid/content/pm/ApplicationInfo;",
        ">;",
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
    .line 58
    iput-object p1, p0, Lui/home/AppLoadViewModel$3;->this$0:Lui/home/AppLoadViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/String;Ljava/util/List;)Landroid/support/v4/util/Pair;
    .locals 1
    .param p1, "filter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;)",
            "Landroid/support/v4/util/Pair",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 61
    .local p2, "applicationInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    iget-object v0, p0, Lui/home/AppLoadViewModel$3;->this$0:Lui/home/AppLoadViewModel;

    invoke-static {v0, p1, p2}, Lui/home/AppLoadViewModel;->access$300(Lui/home/AppLoadViewModel;Ljava/lang/String;Ljava/util/List;)Landroid/support/v4/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 58
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lui/home/AppLoadViewModel$3;->apply(Ljava/lang/String;Ljava/util/List;)Landroid/support/v4/util/Pair;

    move-result-object v0

    return-object v0
.end method

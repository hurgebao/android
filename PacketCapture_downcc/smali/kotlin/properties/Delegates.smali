.class public final Lkotlin/properties/Delegates;
.super Ljava/lang/Object;
.source "Delegates.kt"


# static fields
.field public static final INSTANCE:Lkotlin/properties/Delegates;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    new-instance v0, Lkotlin/properties/Delegates;

    invoke-direct {v0}, Lkotlin/properties/Delegates;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p0, Lkotlin/properties/Delegates;

    .end local p0    # "this":Lkotlin/properties/Delegates;
    sput-object p0, Lkotlin/properties/Delegates;->INSTANCE:Lkotlin/properties/Delegates;

    return-void
.end method


# virtual methods
.method public final notNull()Lkotlin/properties/ReadWriteProperty;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lkotlin/properties/ReadWriteProperty",
            "<",
            "Ljava/lang/Object;",
            "TT;>;"
        }
    .end annotation

    .prologue
    .line 14
    new-instance v0, Lkotlin/properties/NotNullVar;

    invoke-direct {v0}, Lkotlin/properties/NotNullVar;-><init>()V

    check-cast v0, Lkotlin/properties/ReadWriteProperty;

    return-object v0
.end method

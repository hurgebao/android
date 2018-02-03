.class public final Lkotlin/Unit;
.super Ljava/lang/Object;
.source "Unit.kt"


# static fields
.field public static final INSTANCE:Lkotlin/Unit;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lkotlin/Unit;

    invoke-direct {v0}, Lkotlin/Unit;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p0, Lkotlin/Unit;

    .end local p0    # "this":Lkotlin/Unit;
    sput-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    const-string v0, "kotlin.Unit"

    return-object v0
.end method

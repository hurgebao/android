.class public Lkotlin/jvm/internal/Reflection;
.super Ljava/lang/Object;
.source "Reflection.java"


# static fields
.field private static final EMPTY_K_CLASS_ARRAY:[Lkotlin/reflect/KClass;

.field private static final factory:Lkotlin/jvm/internal/ReflectionFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 33
    :try_start_0
    const-string v3, "kotlin.reflect.jvm.internal.ReflectionFactoryImpl"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 34
    .local v2, "implClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/internal/ReflectionFactory;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    .line 41
    .local v1, "impl":Lkotlin/jvm/internal/ReflectionFactory;
    :goto_0
    if-eqz v1, :cond_0

    .end local v1    # "impl":Lkotlin/jvm/internal/ReflectionFactory;
    :goto_1
    sput-object v1, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    .line 46
    const/4 v3, 0x0

    new-array v3, v3, [Lkotlin/reflect/KClass;

    sput-object v3, Lkotlin/jvm/internal/Reflection;->EMPTY_K_CLASS_ARRAY:[Lkotlin/reflect/KClass;

    return-void

    .line 36
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/ClassCastException;
    const/4 v1, 0x0

    .line 39
    .restart local v1    # "impl":Lkotlin/jvm/internal/ReflectionFactory;
    goto :goto_0

    .line 37
    .end local v0    # "e":Ljava/lang/ClassCastException;
    .end local v1    # "impl":Lkotlin/jvm/internal/ReflectionFactory;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const/4 v1, 0x0

    .line 39
    .restart local v1    # "impl":Lkotlin/jvm/internal/ReflectionFactory;
    goto :goto_0

    .line 38
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    .end local v1    # "impl":Lkotlin/jvm/internal/ReflectionFactory;
    :catch_2
    move-exception v0

    .local v0, "e":Ljava/lang/InstantiationException;
    const/4 v1, 0x0

    .line 39
    .restart local v1    # "impl":Lkotlin/jvm/internal/ReflectionFactory;
    goto :goto_0

    .end local v0    # "e":Ljava/lang/InstantiationException;
    .end local v1    # "impl":Lkotlin/jvm/internal/ReflectionFactory;
    :catch_3
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalAccessException;
    const/4 v1, 0x0

    .restart local v1    # "impl":Lkotlin/jvm/internal/ReflectionFactory;
    goto :goto_0

    .line 41
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :cond_0
    new-instance v1, Lkotlin/jvm/internal/ReflectionFactory;

    .end local v1    # "impl":Lkotlin/jvm/internal/ReflectionFactory;
    invoke-direct {v1}, Lkotlin/jvm/internal/ReflectionFactory;-><init>()V

    goto :goto_1
.end method

.method public static function(Lkotlin/jvm/internal/FunctionReference;)Lkotlin/reflect/KFunction;
    .locals 1
    .param p0, "f"    # Lkotlin/jvm/internal/FunctionReference;

    .prologue
    .line 86
    sget-object v0, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/ReflectionFactory;->function(Lkotlin/jvm/internal/FunctionReference;)Lkotlin/reflect/KFunction;

    move-result-object v0

    return-object v0
.end method

.method public static getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;
    .locals 1
    .param p0, "javaClass"    # Ljava/lang/Class;

    .prologue
    .line 61
    sget-object v0, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    return-object v0
.end method

.method public static getOrCreateKotlinPackage(Ljava/lang/Class;Ljava/lang/String;)Lkotlin/reflect/KDeclarationContainer;
    .locals 1
    .param p0, "javaClass"    # Ljava/lang/Class;
    .param p1, "moduleName"    # Ljava/lang/String;

    .prologue
    .line 57
    sget-object v0, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v0, p0, p1}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinPackage(Ljava/lang/Class;Ljava/lang/String;)Lkotlin/reflect/KDeclarationContainer;

    move-result-object v0

    return-object v0
.end method

.method public static mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;
    .locals 1
    .param p0, "p"    # Lkotlin/jvm/internal/MutablePropertyReference1;

    .prologue
    .line 104
    sget-object v0, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/ReflectionFactory;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v0

    return-object v0
.end method

.method public static renderLambdaToString(Lkotlin/jvm/internal/Lambda;)Ljava/lang/String;
    .locals 1
    .param p0, "lambda"    # Lkotlin/jvm/internal/Lambda;

    .prologue
    .line 80
    sget-object v0, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/ReflectionFactory;->renderLambdaToString(Lkotlin/jvm/internal/Lambda;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

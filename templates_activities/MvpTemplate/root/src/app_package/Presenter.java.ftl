package ${packageName};

import android.support.annotation.NonNull;

import com.hannesdorfmann.mosby.mvp.MvpBasePresenter;

public class Presenter${mvpModuleName} extends MvpBasePresenter<Mvp${mvpModuleName}.View> implements Mvp${mvpModuleName}.Presenter {

    //region Fields
    private Mvp${mvpModuleName}.Interactor mInteractor;
    private Mvp${mvpModuleName}.Router mRouter;
    //endregion

    //region Constructor
    public Presenter${mvpModuleName}(@NonNull final Mvp${mvpModuleName}.Interactor poInteractor, final Mvp${mvpModuleName}.Router poRouter) {
        mInteractor = poInteractor;
        mRouter = poRouter;
    }
    //endregion

	//region Overridden methods
    @Override
    public void detachView(final boolean pbRetainInstance) {
        super.detachView(pbRetainInstance);
        mInteractor = null;
        mRouter = null;
    }
    //endregion

    //region Mvp${mvpModuleName}.Presenter
    //endregion
}

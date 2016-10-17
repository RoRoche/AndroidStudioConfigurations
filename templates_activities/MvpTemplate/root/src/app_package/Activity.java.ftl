package ${packageName};

import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.widget.FrameLayout;

import com.hannesdorfmann.mosby.mvp.MvpActivity;

import butterknife.BindView;
import butterknife.ButterKnife;
import se.emilsjolander.intentbuilder.IntentBuilder;

@IntentBuilder
public class Activity${mvpModuleName} extends MvpActivity<Mvp${mvpModuleName}.View, Mvp${mvpModuleName}.Presenter> implements Mvp${mvpModuleName}.View, Mvp${mvpModuleName}.Router {
    //region Bound views
    @BindView(R.id.Activity${mvpModuleName}_ViewGroup_Container)
    FrameLayout mViewGroupContainer;
    //endregion

    //region Lifecycle
    @Override
    protected void onCreate(@Nullable final Bundle poSavedInstanceState) {
        super.onCreate(poSavedInstanceState);
        setContentView(R.layout.${activityToLayout(mvpModuleName)});
        ButterKnife.bind(this);
    }
    //endregion

    //region MvpActivity
    @NonNull
    @Override
    public Mvp${mvpModuleName}.Presenter createPresenter() {
        return new Presenter${mvpModuleName}(new Interactor${mvpModuleName}(), this);
    }
    //endregion

    //region Mvp${mvpModuleName}.View
    //endregion

    //region Mvp${mvpModuleName}.Router
    //endregion
}

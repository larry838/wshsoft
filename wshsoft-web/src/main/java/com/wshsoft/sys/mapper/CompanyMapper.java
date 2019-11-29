package com.wshsoft.sys.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.wshsoft.sys.domain.Company;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;

/**
 * 公司 Mapper接口
 *
 * @author Carry xie
 * @date 2019-11-29
 */
 
public interface CompanyMapper extends BaseMapper<Company> {

    /**
     * 查询公司列表
     * 
     * @param company 公司
     * @return 公司集合
     */
    public List<Company> selectCompanyList(Company company);    
     /**
     * 修改子元素关系
     * 
     * @param companys 子元素
     * @return 结果
     */
    public int updateCompanyChildren(@Param("companys") List<Company> companys);
    
    /**
     * 根据公司ID查询信息
     * 
     * @param companyId 公司ID
     * @return 公司
     */
    public Company selectCompanyById(Long companyId);
    
    /**
     * 修改父级公司状态
     * 
     * @param company 公司
     */
    public void updateCompanyStatus(Company company);

    /**
     * 根据ID查询所有子公司
     * @param companyId 公司ID
     * @return 公司列表
     */
    public List<Company> selectChildrenCompanyById(Long companyId);
    
    /**
     * 校验公司名称是否唯一
     * 
     * @param companyName 公司名称
     * @param parentId 父公司ID
     * @return 结果
     */
    public Company checkCompanyNameUnique(@Param("companyName") String companyName, @Param("parentId") Long parentId);
    
    /**
     * 查询公司个数
     * 
     * @param parentId 父公司ID
     * @return 结果
     */
    public int selectCompanyCount(Company company);

    /**
     * 查询公司是否存在使用
     * 
     * @param companyId 公司ID
     * @return 结果 true 存在 false 不存在
     */
    public int checkCompanyExistUse(Long companyId);
    
 }